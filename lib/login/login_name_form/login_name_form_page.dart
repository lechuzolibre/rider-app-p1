import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:ridy/login/bloc/login_bloc.dart';
import 'package:ridy/login/bloc/login_event.dart';
import 'package:ridy/profile/profile.graphql.dart';
import 'package:ridy/query_result_view.dart';

class LoginNameFormPage extends StatefulWidget {
  const LoginNameFormPage({Key? key}) : super(key: key);

  @override
  State<LoginNameFormPage> createState() => _LoginNameFormPageState();
}

class _LoginNameFormPageState extends State<LoginNameFormPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String firstName = "";

  String lastName = "";

  @override
  Widget build(BuildContext context) {
    return Query$GetRider$Widget(builder: (result, {refetch, fetchMore}) {
      if (result.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      return Form(
          key: _formKey,
          child: Column(children: [
            Text(
              "Identity Information",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: result.parsedData?.rider?.firstName,
              decoration: InputDecoration(
                  labelText: S.of(context).profile_firstname, isDense: true),
              onSaved: (newValue) => firstName = newValue!,
              validator: (value) => value!.isEmpty ? "Enter First Name" : null,
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: result.parsedData?.rider?.lastName,
              decoration: InputDecoration(
                  labelText: S.of(context).profile_lastname, isDense: true),
              onSaved: (newValue) => lastName = newValue!,
              validator: (value) => value!.isEmpty ? "Enter Last Name" : null,
            ),
            const SizedBox(height: 8),
            Mutation$UpdateProfile$Widget(
                options: WidgetOptions$Mutation$UpdateProfile(
                    onCompleted: (data, parsedData) {
                      context
                          .read<LoginBloc>()
                          .add(const LoginNameSubmittedEvent());
                    },
                    onError: (error) =>
                        showOperationErrorMessage(context, error)),
                builder: (runMutation, result) {
                  return SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (result?.isLoading ?? false)
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }
                              runMutation(Variables$Mutation$UpdateProfile(
                                  firstName: firstName, lastName: lastName));
                            },
                      child: Text(S.of(context).action_confirm),
                    ),
                  );
                })
          ]));
    });
  }
}
