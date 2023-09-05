import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:hive/hive.dart';
import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/components/user_avatar_view.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:ridy/profile/profile.graphql.dart';
import 'package:ridy/schema.gql.dart';
import '../config.dart';
import '../main/bloc/jwt_cubit.dart';
import '../main/bloc/rider_profile_cubit.dart';
import '../query_result_view.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? firstName;
  String? lastName;
  String? email;
  Enum$Gender? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Query$GetRider$Widget(builder: (result, {refetch, fetchMore}) {
        if (result.hasException || result.isLoading) {
          return Center(child: QueryResultView(result, refetch: refetch));
        }
        final rider = result.parsedData!.rider!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                RidyBackButton(text: S.of(context).action_back),
                const Spacer(),
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text(S.of(context).action_delete_account),
                      onTap: () {
                        Future.delayed(
                            const Duration(seconds: 0),
                            () => showDialog(
                                context: context,
                                builder: (BuildContext ncontext) {
                                  return AlertDialog(
                                    title: Text(S
                                        .of(context)
                                        .message_delete_account_title),
                                    content: Text(S
                                        .of(context)
                                        .message_delete_account_body),
                                    actions: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Mutation$DeleteUser$Widget(
                                                options:
                                                    WidgetOptions$Mutation$DeleteUser(
                                                        onCompleted: (result,
                                                            parsedData) {
                                                          // TODO: IMPORTANT - try logout to see if it works without blinking
                                                          context
                                                              .read<
                                                                  RiderProfileCubit>()
                                                              .updateProfile(
                                                                  null);
                                                          context
                                                              .read<JWTCubit>()
                                                              .logOut();

                                                          context
                                                              .read<JWTCubit>()
                                                              .logOut();
                                                          Navigator.popUntil(
                                                              context,
                                                              (route) => route
                                                                  .isFirst);
                                                        },
                                                        onError: (error) =>
                                                            showOperationErrorMessage(
                                                                context,
                                                                error)),
                                                builder: (runMutation, result) {
                                                  return TextButton(
                                                      onPressed: () async {
                                                        runMutation();
                                                        context
                                                            .read<
                                                                RiderProfileCubit>()
                                                            .updateProfile(
                                                                null);
                                                        await Hive.box('user')
                                                            .delete('jwt');
                                                      },
                                                      child: Text(
                                                        S
                                                            .of(context)
                                                            .action_delete_account,
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xffb20d0e)),
                                                      ));
                                                }),
                                          ),
                                          const Spacer(),
                                          TextButton(
                                              onPressed: () =>
                                                  Navigator.of(context).pop(),
                                              child: Text(
                                                S.of(context).action_cancel,
                                                textAlign: TextAlign.end,
                                              ))
                                        ],
                                      ),
                                    ],
                                  );
                                }));
                      },
                    )
                  ];
                })
              ],
            ),
            SingleChildScrollView(
                child: Column(children: [
              const SizedBox(height: 16),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: UserAvatarView(
                      urlPrefix: serverUrl,
                      url: rider.media?.address,
                      cornerRadius: 10,
                      size: 50,
                    ),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: CustomTheme.primaryColors.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.add,
                          color: CustomTheme.neutralColors.shade500,
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "+${rider.mobileNumber}",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              CupertinoButton(
                  minSize: 0,
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                  child: Text(S.of(context).action_add_photo),
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(type: FileType.image);

                    if (result != null && result.files.single.path != null) {
                      await uploadFile(result.files.single.path!);
                      refetch!();
                    }
                  }),
              Form(
                key: _formKey,
                child: Column(children: [
                  const SizedBox(height: 20),
                  TextFormField(
                    initialValue: rider.firstName,
                    decoration: InputDecoration(
                        labelText: S.of(context).profile_firstname,
                        fillColor: CustomTheme.primaryColors.shade100),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: rider.lastName,
                    decoration: InputDecoration(
                        fillColor: CustomTheme.primaryColors.shade100,
                        labelText: S.of(context).profile_lastname),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: rider.email,
                    decoration: InputDecoration(
                        fillColor: CustomTheme.primaryColors.shade100,
                        labelText: S.of(context).profile_email),
                  ),
                  const SizedBox(height: 10),
                  DropdownButtonFormField<Enum$Gender>(
                      value: rider.gender,
                      decoration: InputDecoration(
                          fillColor: CustomTheme.primaryColors.shade100,
                          labelText: S.of(context).profile_gender),
                      icon: const Icon(Ionicons.chevron_down),
                      items: <DropdownMenuItem<Enum$Gender>>[
                        DropdownMenuItem(
                            value: Enum$Gender.Male,
                            child: Text(S.of(context).enum_gender_male)),
                        DropdownMenuItem(
                            value: Enum$Gender.Female,
                            child: Text(S.of(context).enum_gender_female)),
                        DropdownMenuItem(
                            value: Enum$Gender.$unknown,
                            child: Text(S.of(context).enum_gender_unknown))
                      ],
                      onChanged: (Enum$Gender? value) => gender = value),
                ]),
              ),
            ])),
            const Spacer(),
            Row(
              children: [
                Expanded(
                    child: Mutation$UpdateProfile$Widget(
                        options: WidgetOptions$Mutation$UpdateProfile(
                            onCompleted: (result, parsedData) {
                              refetch?.call();
                            },
                            onError: (error) =>
                                showOperationErrorMessage(context, error)),
                        builder: (runMutation, result) {
                          return ElevatedButton(
                            child: Text(S.of(context).action_save),
                            onPressed: () {
                              if (_formKey.currentState?.validate() != true) {
                                return;
                              }
                              _formKey.currentState?.save();
                              runMutation(Variables$Mutation$UpdateProfile(
                                  firstName: firstName!,
                                  lastName: lastName!,
                                  email: email,
                                  gender: gender));
                            },
                          );
                        }))
              ],
            )
          ],
        );
      }),
    )));
  }

  uploadFile(String path) async {
    var postUri = Uri.parse("${serverUrl}upload_profile");
    var request = http.MultipartRequest("POST", postUri);
    request.headers['Authorization'] =
        'Bearer ${Hive.box('user').get('jwt').toString()}';
    request.files.add(await http.MultipartFile.fromPath('file', path));
    await request.send();
    // var response = await http.Response.fromStream(streamedResponse);
    // var json = jsonDecode(response.body);
    // setState(() {});
    // json['address'];
  }
}
