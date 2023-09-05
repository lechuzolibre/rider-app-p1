import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/address/address_item_view.dart';
import 'package:client_shared/components/back_button.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:ridy/address/addresses.graphql.dart';
import 'package:ridy/location_selection/welcome_card/place_confirm_sheet_view.dart';

import 'package:ridy/location_selection/welcome_card/place_search_sheet_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:ridy/map/map_view.dart';
import 'package:ridy/query_result_view.dart';
import 'package:ridy/schema.gql.dart';
import 'package:latlong2/latlong.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AddressDetailsView extends StatefulWidget {
  final Query$GetAddresses$riderAddresses? address;
  final Enum$RiderAddressType? defaultType;
  final FullLocation? currentLocation;

  const AddressDetailsView(
      {this.currentLocation, this.address, this.defaultType, Key? key})
      : super(key: key);

  @override
  State<AddressDetailsView> createState() => _AddressDetailsViewState();
}

class _AddressDetailsViewState extends State<AddressDetailsView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  MapViewController? mapController;
  String title = "";
  FullLocation? location;
  Enum$RiderAddressType? type;

  @override
  void initState() {
    type = widget.address?.type ?? widget.defaultType;
    if (widget.address != null) {
      title = widget.address!.title;
      location = FullLocation(
          latlng: widget.address!.location.toLatLng(),
          address: widget.address!.details,
          title: title);
      type = widget.address!.type;
    } else {
      type = widget.defaultType;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                RidyBackButton(text: S.of(context).action_back),
                const Spacer(),
                if (widget.address != null)
                  Mutation$DeleteAddress$Widget(
                      options: WidgetOptions$Mutation$DeleteAddress(
                          onCompleted: (result, parsedData) =>
                              Navigator.pop(context),
                          onError: (error) =>
                              showOperationErrorMessage(context, error)),
                      builder: (runMutation, result) {
                        return CupertinoButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(S.of(context).action_delete),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            runMutation(
                                                Variables$Mutation$DeleteAddress(
                                                    id: widget.address!.id));
                                          },
                                          child: Text(S.of(context).actionYes)),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(S.of(context).actionNo))
                                    ],
                                    content: Text(S
                                        .of(context)
                                        .messageConfirmAddressDelete),
                                  );
                                });
                          },
                          minSize: 0,
                          padding: const EdgeInsets.all(0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Ionicons.trash,
                                  color: CustomTheme.neutralColors.shade600,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, top: 4),
                                  child: Text(
                                    S.of(context).action_delete,
                                    style: TextStyle(
                                        color:
                                            CustomTheme.neutralColors.shade600),
                                  ),
                                )
                              ]),
                        );
                      })
              ],
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).favorite_location_details_title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      initialValue: title,
                      onSaved: (value) => title = value ?? "",
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Ionicons.ellipse,
                          color: CustomTheme.neutralColors,
                          size: 12,
                        ),
                        isDense: true,
                        hintStyle: Theme.of(context).textTheme.labelLarge,
                        hintText:
                            S.of(context).create_address_title_textfield_hint,
                      ),
                      validator: (value) => (value != null && value.isNotEmpty
                          ? null
                          : S.of(context).create_address_name_empty_error),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<Enum$RiderAddressType>(
                      value: type,
                      onSaved: (newValue) => type = newValue,
                      icon: const Icon(
                        Ionicons.chevron_down,
                        color: CustomTheme.neutralColors,
                      ),
                      validator: (type) => (type != null
                          ? null
                          : S.of(context).textbox_error_select_type_address),
                      decoration: InputDecoration(
                        hintText: S.of(context).placeholder_type,
                        hintStyle: Theme.of(context).textTheme.labelLarge,
                        isDense: true,
                        prefixIcon: const Icon(
                          Ionicons.ellipse,
                          color: CustomTheme.neutralColors,
                          size: 12,
                        ),
                      ),
                      items: <DropdownMenuItem<Enum$RiderAddressType>>[
                        createAddressType(Enum$RiderAddressType.Home),
                        createAddressType(Enum$RiderAddressType.Work),
                        createAddressType(Enum$RiderAddressType.Gym),
                        createAddressType(Enum$RiderAddressType.Cafe),
                        createAddressType(Enum$RiderAddressType.Park),
                        createAddressType(Enum$RiderAddressType.Parent),
                        createAddressType(Enum$RiderAddressType.Partner),
                        createAddressType(Enum$RiderAddressType.Other),
                      ],
                      onChanged: (Enum$RiderAddressType? value) => type = value,
                    ),
                    const Spacer(),
                    FormField<FullLocation>(
                        onSaved: (newValue) => location = newValue,
                        initialValue: location ?? widget.currentLocation,
                        validator: (value) => (value != null
                            ? null
                            : "Tap on the map to select the location"),
                        builder: (state) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CupertinoButton(
                                minSize: 0,
                                padding: EdgeInsets.zero,
                                onPressed: () async {
                                  final modalResult =
                                      await showBarModalBottomSheet<
                                              FullLocation>(
                                          context: context,
                                          enableDrag: false,
                                          builder: (context) {
                                            return PlaceConfirmSheetView(
                                                location ??
                                                    widget.currentLocation);
                                          });
                                  if (modalResult == null) return;
                                  mapController?.moveCamera(
                                      modalResult.latlng, 16);
                                  state.didChange(modalResult);
                                },
                                child: IgnorePointer(
                                    child: Container(
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: CustomTheme
                                                      .neutralColors.shade200,
                                                  blurRadius: 5,
                                                  spreadRadius: 1)
                                            ]),
                                        constraints: const BoxConstraints(
                                            minHeight: 100, maxHeight: 350),
                                        child: MapView(
                                          initialLocation: state.value,
                                          mode: MapViewMode.picker,
                                          onControllerReady: (controller) {
                                            mapController = controller;
                                          },
                                        ))),
                              ),
                              if (state.hasError)
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    state.errorText!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color:
                                                Theme.of(context).errorColor),
                                  ),
                                )
                            ],
                          );
                        }),
                    const Spacer(),
                    if (widget.address == null)
                      Mutation$CreateAddress$Widget(
                          options: WidgetOptions$Mutation$CreateAddress(
                              onCompleted: (data, parsedData) =>
                                  Navigator.pop(context),
                              onError: (error) =>
                                  showOperationErrorMessage(context, error)),
                          builder: (runMutation, result) {
                            return SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    final validateResult =
                                        _formKey.currentState?.validate();
                                    if (validateResult == null) return;
                                    _formKey.currentState?.save();
                                    final args =
                                        Variables$Mutation$CreateAddress(
                                            input:
                                                Input$CreateRiderAddressInput(
                                                    title: title,
                                                    details: location!.address,
                                                    type: type,
                                                    location: Input$PointInput(
                                                        lat: location!
                                                            .latlng.latitude,
                                                        lng: location!.latlng
                                                            .longitude)));
                                    runMutation(args);
                                  },
                                  child: Text(S.of(context).action_save)),
                            );
                          }),
                    if (widget.address != null)
                      Mutation$UpdateAddress$Widget(
                          options: WidgetOptions$Mutation$UpdateAddress(
                              onCompleted: (result, parsedData) =>
                                  Navigator.pop(context),
                              onError: (error) =>
                                  showOperationErrorMessage(context, error)),
                          builder: (runMutation, result) {
                            return SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final validateResult =
                                        _formKey.currentState?.validate();
                                    if (validateResult == null) return;
                                    _formKey.currentState?.save();
                                    final args =
                                        Variables$Mutation$UpdateAddress(
                                            id: widget.address!.id,
                                            update:
                                                Input$CreateRiderAddressInput(
                                                    title: title,
                                                    details: location!.address,
                                                    type: type,
                                                    location: Input$PointInput(
                                                        lat: location!
                                                            .latlng.latitude,
                                                        lng: location!.latlng
                                                            .longitude)));
                                    runMutation(args);
                                  },
                                  child: Text(S.of(context).action_save)),
                            );
                          })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<Enum$RiderAddressType> createAddressType(
      Enum$RiderAddressType type) {
    return DropdownMenuItem(
        value: type,
        child: Row(children: [
          Icon(
            getAddressTypeIcon(type),
            color: Colors.grey,
          ),
          const SizedBox(width: 8),
          Text(getAddressTypeName(context, type)),
        ]));
  }
}

extension AddressLocation on Query$GetAddresses$riderAddresses$location {
  LatLng toLatLng() {
    return LatLng(lat, lng);
  }
}
