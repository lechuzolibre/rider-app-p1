import 'package:client_shared/components/ridy_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:pinput/pinput.dart';
import 'package:ridy/login/bloc/login_loading_cubit.dart';
import 'package:ridy/login/bloc/login_bloc.dart';
import 'package:ridy/login/bloc/login_event.dart';
import 'package:ridy/login/login.graphql.dart';
import 'package:ridy/login/login_verify_code/bloc/last_send_code_at_cubit.dart';
import 'package:ridy/login/login_verify_code/bloc/login_verify_code_bloc.dart';
import 'package:ridy/login/login_verify_code/bloc/login_verify_code_event.dart';
import 'package:ridy/query_result_view.dart';
import 'package:timeago_flutter/timeago_flutter.dart';

import 'bloc/login_verify_code_state.dart';

class LoginVerifyCodePage extends StatefulWidget {
  final String verificationId;
  final String phoneNumber;
  final int? resendToken;
  final DateTime lastSendCodeAt;

  const LoginVerifyCodePage(
      {Key? key,
      required this.verificationId,
      required this.phoneNumber,
      this.resendToken,
      required this.lastSendCodeAt})
      : super(key: key);

  @override
  State<LoginVerifyCodePage> createState() => _LoginVerifyCodePageState();
}

class _LoginVerifyCodePageState extends State<LoginVerifyCodePage> {
  TextEditingController codeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                LastSendCodeAtCubit(lastSendCodeAt: widget.lastSendCodeAt))
      ],
      child: Column(children: [
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Pinput(
                  length: 6,
                  controller: codeController,
                  autofocus: true,
                  onCompleted: (value) async {
                    context
                        .read<LoginVerifyCodeBloc>()
                        .add(LoginVerifyCodeEnteredCodeEvent(code: value));
                  }),
            ),
          ],
        ),
        const SizedBox(height: 8),
        BlocBuilder<LastSendCodeAtCubit, DateTime>(
          builder: (context, state) {
            return ResendCodeButton(lastSendCodeAt: state);
          },
        ),
        Mutation$Login$Widget(
            options:
                WidgetOptions$Mutation$Login(onCompleted: (data, parsedData) {
              context.read<LoginLoadingCubit>().hideLoading();
              context.read<LoginBloc>().add(LoginVerificationCompletedEvent(
                  jwtToken: parsedData!.login.jwtToken));
            }, onError: (error) {
              context.read<LoginLoadingCubit>().hideLoading();
              showOperationErrorMessage(context, error);
            }),
            builder: (runMutation, result) {
              return BlocListener<LoginVerifyCodeBloc, LoginVerifyCodeState>(
                listener: (context, state) {
                  if (state is LoginVerifyCodeVerificationCompletedState) {
                    runMutation(
                        Variables$Mutation$Login(firebaseToken: state.uid));
                  }
                  if (state is LoginVerifyCodeErrorState) {
                    context.read<LoginLoadingCubit>().hideLoading();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: RidyBanner(state.errorMessage,
                            type: BannerType.error)));
                  }
                  if (state is LoginVerifyCodeLoadingState) {
                    context.read<LoginLoadingCubit>().showLoading();
                  }
                },
                child: const SizedBox(),
              );
            })
      ]),
    );
  }
}

class ResendCodeButton extends StatefulWidget {
  final DateTime lastSendCodeAt;
  const ResendCodeButton({Key? key, required this.lastSendCodeAt})
      : super(key: key);

  @override
  State<ResendCodeButton> createState() => _ResendCodeButtonState();
}

class _ResendCodeButtonState extends State<ResendCodeButton> {
  @override
  Widget build(BuildContext context) {
    return Timeago(
      allowFromNow: true,
      refreshRate: const Duration(seconds: 1),
      date: widget.lastSendCodeAt.add(const Duration(seconds: 30)),
      builder: (context, value) {
        if (widget.lastSendCodeAt
            .add(const Duration(seconds: 30))
            .isBefore(DateTime.now())) {
          return TextButton(
            onPressed: () {
              context
                  .read<LoginVerifyCodeBloc>()
                  .add(const LoginVerifyCodeResendCodeRequestedEvent());
            },
            child: Text(S.of(context).action_resend_code),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(S.of(context).notice_resend_code_in_seconds(widget
                .lastSendCodeAt
                .add(const Duration(seconds: 30))
                .difference(DateTime.now())
                .inSeconds)),
          );
        }
      },
    );
  }
}
