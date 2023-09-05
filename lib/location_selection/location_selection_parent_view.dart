import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lifecycle/lifecycle.dart';
import 'package:osm_nominatim/osm_nominatim.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:ridy/location_selection/reservation_messages/looking_sheet_view.dart';
import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';
import 'package:ridy/main/bloc/current_location_cubit.dart';
import 'package:ridy/main/bloc/jwt_cubit.dart';
import 'package:ridy/main/bloc/rider_profile_cubit.dart';
import 'package:ridy/main/map_providers/google_map_provider.dart';
import 'package:ridy/main/map_providers/open_street_map_provider.dart';
import 'package:ridy/main/order.graphql.dart';
import 'package:ridy/main/pay_for_ride_sheet_view.dart';
import 'package:ridy/main/rate_ride_sheet_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/schema.gql.dart';

import '../main/bloc/main_bloc.dart';
import '../main/drawer_logged_in.dart';
import '../main/drawer_logged_out.dart';
import '../main/order_status_sheet_view.dart';
import '../main/service_selection_card_view.dart';
import 'welcome_card/welcome_card_view.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class LocationSelectionParentView extends StatefulWidget {
  const LocationSelectionParentView({Key? key}) : super(key: key);

  @override
  State<LocationSelectionParentView> createState() =>
      _LocationSelectionParentViewState();
}

class _LocationSelectionParentViewState
    extends State<LocationSelectionParentView> {
  late GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Refetch? refetch;
  double bottomSheetHeight = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final mainBloc = context.read<MainBloc>();
    final jwt = Hive.box('user').get('jwt').toString();
    if (jwt.isNotEmpty) {
      context.read<JWTCubit>().login(jwt);
    }
    return Scaffold(
      key: scaffoldKey,
      drawer: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Drawer(
          backgroundColor: CustomTheme.primaryColors.shade100,
          child: BlocBuilder<RiderProfileCubit, Query$GetCurrentOrder$rider?>(
              builder: (context, state) => state == null
                  ? const DrawerLoggedOut()
                  : DrawerLoggedIn(rider: state)),
        ),
      ),
      body: Stack(children: [
        ValueListenableBuilder<Box>(
            valueListenable:
                Hive.box('settings').listenable(keys: ['mapProvider']),
            builder: (context, value, child) {
              final mapProvider = value.get('mapProvider');
              if (mapProvider == 'mapbox' ||
                  mapProvider == 'openstreet' ||
                  mapProvider == null) {
                return OpenStreetMapProvider(
                  bottomSheetHeight: bottomSheetHeight,
                );
              } else {
                return GoogleMapProvider(
                  bottomSheetHeight: bottomSheetHeight,
                );
              }
            }),
        BlocBuilder<MainBloc, MainBlocState>(builder: (context, state) {
          if (state is OrderPreview) {
            return SmallBackFloatingActionButton(
                onPressed: () => context.read<MainBloc>().add(ResetState()));
          } else if (state is SelectingPoints) {
            return MenuButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                bookingCount: state.bookingsCount);
          } else {
            return const SizedBox();
          }
        }),
        LifecycleWrapper(
          onLifecycleEvent: (event) {
            if (event == LifecycleEvent.visible && refetch != null) {
              refetch!();
            }
          },
          child: FutureBuilder<PackageInfo>(
              future: PackageInfo.fromPlatform(),
              builder: (context, snapshot) {
                return BlocBuilder<JWTCubit, String?>(
                    builder: (context, jwtState) {
                  return Query$GetCurrentOrder$Widget(
                      options: Options$Query$GetCurrentOrder(
                          variables: Variables$Query$GetCurrentOrder(
                              versionCode: int.parse(
                                  snapshot.data?.buildNumber ?? "99999")),
                          fetchPolicy: FetchPolicy.noCache,
                          onComplete: (result, parsedData) {
                            if (parsedData != null) {
                              context
                                  .read<RiderProfileCubit>()
                                  .updateProfile(parsedData.rider!);
                              if (parsedData.requireUpdate ==
                                  Enum$VersionStatus.MandatoryUpdate) {
                                mainBloc.add(VersionStatusEvent(
                                    parsedData.requireUpdate));
                              } else {
                                mainBloc.add(ProfileUpdated(
                                    profile: parsedData.rider!,
                                    driverLocation: parsedData
                                        .getCurrentOrderDriverLocation));
                              }
                            }
                          }),
                      builder: (result, {refetch, fetchMore}) {
                        if (result.isLoading) {
                          return const SizedBox();
                        }
                        this.refetch = refetch;
                        return const SizedBox();
                      });
                });
              }),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width >
                        CustomTheme.tabletBreakpoint
                    ? 16
                    : 0),
            child: BlocBuilder<MainBloc, MainBlocState>(
              builder: (context, state) {
                return RiderBottomView(
                    mainBlocState: state,
                    onSizeChanged: (size) {
                      if (size == bottomSheetHeight) return;
                      setState(() {
                        bottomSheetHeight = size;
                      });
                    });
              },
            ),
          ),
        )
      ]),
    );
  }

  void setCurrentLocation(BuildContext context, Position position) async {
    final currentLocationCubit = context.read<CurrentLocationCubit>();
    final geocodeResult = await Nominatim.reverseSearch(
        lat: position.latitude, lon: position.longitude, nameDetails: true);
    final fullLocation = geocodeResult.toFullLocation();
    try {
      currentLocationCubit.updateLocation(fullLocation);
      // ignore: empty_catches
    } catch (error) {}
  }
}

// ignore: must_be_immutable
class RiderBottomView extends StatefulWidget {
  final MainBlocState mainBlocState;
  final Function(double) onSizeChanged;

  const RiderBottomView(
      {Key? key, required this.mainBlocState, required this.onSizeChanged})
      : super(key: key);

  @override
  State<RiderBottomView> createState() => _RiderBottomViewState();
}

class _RiderBottomViewState extends State<RiderBottomView> {
  final GlobalKey bottomSheetKey = GlobalKey();

  double bottomSheetHeight = 0;

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    WidgetsBinding.instance.addPostFrameCallback(postFrameCallback);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      key: bottomSheetKey,
      children: [
        if (widget.mainBlocState is SelectingPoints)
          WelcomeCardView(
            onSizeChanged: () {
              widget.onSizeChanged(bottomSheetKey.currentContext!.size!.height);
            },
          ),
        if (widget.mainBlocState is OrderPreview)
          const ServiceSelectionCardView(),
        if (widget.mainBlocState is StateWithActiveOrder)
          Subscription$UpdatedOrder$Widget(
              onSubscriptionResult: (subscriptionResult, client) {
            if (subscriptionResult.parsedData == null) return;
            mainBloc.add(CurrentOrderUpdated(
                subscriptionResult.parsedData!.orderUpdated));
          }, builder: (result) {
            if (result.hasException) {
              return Text(error.toString());
            }
            if (widget.mainBlocState is OrderInProgress) {
              return const OrderStatusSheetView();
            }
            if (widget.mainBlocState is OrderInvoice) {
              return Mutation$updateOrder$Widget(
                  options: WidgetOptions$Mutation$updateOrder(
                      onCompleted: (data, parsedData) {
                        if (parsedData == null) return;
                        mainBloc.add(
                            CurrentOrderUpdated(parsedData.updateOneOrder));
                      },
                      onError: (error) =>
                          showOperationErrorMessage(context, error)),
                  builder: (runMutation, result) {
                    return PayForRideSheetView(
                      onClosePressed: (widget.mainBlocState as OrderInvoice)
                                      .order
                                      .status ==
                                  Enum$OrderStatus.WaitingForPostPay ||
                              (result?.isLoading ?? false)
                          ? null
                          : () {
                              runMutation(Variables$Mutation$updateOrder(
                                  id: (widget.mainBlocState as OrderInvoice)
                                      .order
                                      .id,
                                  update: Input$UpdateOrderInput(
                                      status: Enum$OrderStatus.RiderCanceled,
                                      waitMinutes: 0,
                                      tipAmount: 0)));
                            },
                      order: (widget.mainBlocState as OrderInvoice).order,
                    );
                  });
            }
            if (widget.mainBlocState is OrderReview) {
              return const RateRideSheetView();
            }
            if (widget.mainBlocState is OrderLooking) {
              return const LookingSheetView();
            }
            return const Text("Unacceptable state");
          })
      ],
    );
  }

  void postFrameCallback(Duration timeStamp) {
    BuildContext? context = bottomSheetKey.currentContext;
    if (context == null) return;

    final newBottomSheetHeight = context.size?.height;
    if (newBottomSheetHeight == null ||
        bottomSheetHeight == newBottomSheetHeight) return;
    widget.onSizeChanged(newBottomSheetHeight);
  }
}

class SmallBackFloatingActionButton extends StatelessWidget {
  final Function onPressed;

  const SmallBackFloatingActionButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: FloatingActionButton.small(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 2,
          onPressed: () => onPressed(),
          backgroundColor: CustomTheme.primaryColors.shade50,
          child: Icon(
            Ionicons.arrow_back,
            color: CustomTheme.primaryColors.shade800,
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    required this.onPressed,
    required this.bookingCount,
  }) : super(key: key);

  final Function onPressed;
  final int bookingCount;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: FloatingActionButton(
          heroTag: 'menuFab',
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () => onPressed(),
          backgroundColor: Colors.white,
          child: bookingCount == 0
              ? Icon(
                  Ionicons.menu,
                  color: CustomTheme.primaryColors.shade800,
                )
              : Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: Center(
                      child: Text(
                        bookingCount.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

extension PlaceToFullLocation on Place {
  FullLocation toFullLocation() {
    return FullLocation(
        latlng: LatLng(lat, lon),
        address: displayName,
        title: nameDetails?['name'] ?? "");
  }
}

extension PointMixinHelper on Input$PointInput {
  LatLng toLatLng() {
    return LatLng(lat, lng);
  }
}

extension FullLocationHelper on FullLocation {
  Input$PointInput toPointInput() {
    return Input$PointInput(lat: latlng.latitude, lng: latlng.longitude);
  }
}
