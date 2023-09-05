import 'package:client_shared/components/ridy_banner.dart';
import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_codes/country_codes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:ridy/login/bloc/login_bloc.dart';
import 'package:ridy/login/bloc/login_event.dart';
import 'package:ridy/login/bloc/login_loading_cubit.dart';
import 'package:ridy/login/login.graphql.dart';
import 'package:ridy/login/login_phone_number/bloc/login_phone_number_bloc.dart';
import 'package:ridy/login/login_phone_number/bloc/login_phone_number_event.dart';
import 'package:ridy/login/login_phone_number/bloc/login_phone_number_state.dart';
import 'package:ridy/query_result_view.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginNumberPage extends StatefulWidget {
  const LoginNumberPage({Key? key}) : super(key: key);

  @override
  State<LoginNumberPage> createState() => _LoginNumberPageState();
}

class _LoginNumberPageState extends State<LoginNumberPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String phoneNumber = "";

  String countryCode = !kIsWeb
      ? (CountryCodes.detailsForLocale().alpha2Code ?? defaultCountryCode)
      : defaultCountryCode;

  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            S.of(context).login_cell_number_textfield_hint,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).login_enter_phone_subtitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: CustomTheme.neutralColors.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: FormField<String?>(
                  initialValue: countryCode,
                  onSaved: (newValue) {
                    countryCode = newValue ?? defaultCountryCode;
                  },
                  builder: (state) => CountryCodePicker(
                    boxDecoration: BoxDecoration(
                        color: CustomTheme.neutralColors.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    initialSelection: countryCode,
                    onChanged: (code) => state.didChange(code.code),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Flexible(
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: S.of(context).login_cell_number_textfield_hint,
                  ),
                  onSaved: (newValue) => phoneNumber = newValue ?? "",
                  validator: (value) => value != null && value.isNotEmpty
                      ? null
                      : S.of(context).login_cell_number_empty_error,
                ),
              ),
            ],
          ),
          if (loginTermsAndConditionsUrl.isNotEmpty)
            Row(
              children: [
                Checkbox(
                    value: agreedToTerms,
                    onChanged: (value) =>
                        setState(() => agreedToTerms = value ?? false)),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      style: const TextStyle(color: Colors.black),
                      text: S.of(context).terms_and_condition_text),
                  TextSpan(
                      style: const TextStyle(color: Colors.blue),
                      text: S.of(context).terms_and_condition_button,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(Uri.parse(loginTermsAndConditionsUrl));
                        })
                ])),
              ],
            ),
          Container(
              padding: const EdgeInsets.only(top: 20),
              width: double.infinity,
              child: ElevatedButton(
                  onPressed:
                      (!agreedToTerms && loginTermsAndConditionsUrl.isNotEmpty)
                          ? null
                          : () async {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _formKey.currentState!.save();
                              final String dialCode =
                                  CountryCode.fromCountryCode(countryCode)
                                      .dialCode!;
                              context.read<LoginPhoneNumberBloc>().add(
                                  LoginPhoneNumberRequestedEvent(
                                      countryCode: dialCode,
                                      phoneNumber: phoneNumber));
                            },
                  child: Text(S.of(context).action_continue))),
          Mutation$Login$Widget(
              options: WidgetOptions$Mutation$Login(
                  onCompleted: (data, parsedData) {
                    context.read<LoginLoadingCubit>().hideLoading();
                    context.read<LoginBloc>().add(
                        LoginVerificationCompletedEvent(
                            jwtToken: parsedData!.login.jwtToken));
                  },
                  onError: (error) =>
                      showOperationErrorMessage(context, error)),
              builder: (runMutation, result) {
                return BlocListener<LoginPhoneNumberBloc,
                    LoginPhoneNumberState>(
                  listener: (context, state) {
                    if (state is LoginPhoneNumberErrorState) {
                      context.read<LoginLoadingCubit>().hideLoading();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: RidyBanner(
                        state.message,
                        type: BannerType.error,
                      )));
                    }
                    if (state is LoginPhoneNumberCodeSentState) {
                      context.read<LoginLoadingCubit>().hideLoading();
                      context.read<LoginBloc>().add(LoginCodeSentEvent(
                          phoneNumber: state.phoneNumber,
                          verificationId: state.verificationId,
                          resendToken: state.resendToken));
                    }
                    if (state is LoginPhoneNumberVerificationCompletedState) {
                      runMutation(Variables$Mutation$Login(
                          firebaseToken: state.firebaseToken));
                    }
                    if (state is LoginPhoneNumberLoadingState) {
                      context.read<LoginLoadingCubit>().showLoading();
                    }
                  },
                  child: const SizedBox(),
                );
              })
        ],
      ),
    );
  }
}
