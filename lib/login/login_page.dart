import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/l10n/messages.dart';
import 'package:client_shared/components/step_view.dart';
import 'package:hive/hive.dart';
import 'package:ridy/login/bloc/login_event.dart';
import 'package:ridy/login/bloc/login_loading_cubit.dart';
import 'package:ridy/login/firebase_auth_repository.dart';
import 'package:ridy/login/login_name_form/login_name_form_page.dart';
import 'package:ridy/login/login_phone_number/bloc/login_phone_number_bloc.dart';
import 'package:ridy/login/login_phone_number/login_number_page.dart';
import 'package:ridy/login/login_success/login_success_page.dart';
import 'package:ridy/login/login_verify_code/bloc/login_verify_code_bloc.dart';
import 'package:ridy/login/login_verify_code/login_verify_code_page.dart';
import 'package:client_shared/components/query_result_view.dart';

import '../main/bloc/jwt_cubit.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => LoginLoadingCubit()),
        BlocProvider(
            create: (context) => LoginPhoneNumberBloc(
                authRepository: context.read<FirebaseAuthRepository>())),
      ],
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Stack(
            children: [
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                            if (state is LoginSuccessState) {
                              return const SizedBox();
                            }
                            return RidyBackButton(
                              text: "",
                              onPressed: () {
                                final bloc = context.read<LoginBloc>();
                                if (state is LoginInputNumberState) {
                                  Navigator.pop(context);
                                }
                                if (state is LoginInputCodeState ||
                                    state is LoginInputNameState) {
                                  bloc.add(const LoginChangePhoneNumberEvent());
                                }
                                if (state is LoginInputNameState) {
                                  bloc.add(const LoginChangePhoneNumberEvent());
                                }
                              },
                            );
                          },
                        ),
                        Center(
                            child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('images/logo.png',
                                  width: 40, height: 40),
                            ),
                            const SizedBox(width: 8),
                            Text(appName),
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      constraints: const BoxConstraints(maxWidth: 800),
                      padding: const EdgeInsets.all(12),
                      child: BlocConsumer<LoginBloc, LoginState>(
                        listener: (context, state) {
                          int pageIndex = 0;
                          if (state is LoginInputCodeState) {
                            pageIndex = 1;
                          }
                          if (state is LoginInputNameState) {
                            final Box box = Hive.box('user');
                            box.put("jwt", state.jwtToken);
                            context.read<JWTCubit>().login(state.jwtToken);
                            pageIndex = 2;
                          }
                          if (state is LoginSuccessState) {
                            Future.delayed(const Duration(seconds: 3))
                                .then((value) => Navigator.pop(context));
                            pageIndex = 3;
                          }
                          pageController.animateToPage(pageIndex,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                        },
                        builder: (context, state) {
                          return WizardSteps(
                            items: [
                              WizardStepItem(title: "Enter number"),
                              WizardStepItem(title: "Verify code"),
                              WizardStepItem(title: "Enter name")
                            ],
                            activePageId: state is LoginInputNumberState
                                ? 0
                                : (state is LoginInputCodeState
                                    ? 1
                                    : (state is LoginInputNameState ? 2 : 3)),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Container(
                        constraints: const BoxConstraints(maxHeight: 500),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        clipBehavior: Clip.hardEdge,
                        child: Stack(children: [
                          BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              return Positioned.fill(
                                  child: Row(
                                children: [
                                  Expanded(
                                      child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          height: double.infinity,
                                          width: double.infinity,
                                          color: state is LoginInputNumberState
                                              ? const Color(0xffedf3ff)
                                              : const Color(0xffd0e0ff))),
                                  Expanded(
                                      child: AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          height: double.infinity,
                                          width: double.infinity,
                                          color: state is! LoginInputCodeState
                                              ? const Color(0xffd0e0ff)
                                              : const Color(0xffedf3ff))),
                                ],
                              ));
                            },
                          ),
                          BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              return Align(
                                alignment: Alignment.bottomCenter,
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 250),
                                  child: state is LoginInputNumberState
                                      ? Image.asset('images/login-1.png')
                                      : (state is LoginInputCodeState
                                          ? Image.asset('images/login-2.png')
                                          : Image.asset('images/login-3.png')),
                                ),
                              );
                            },
                          )
                        ]),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 220,
                      child: PageView(
                        controller: pageController,
                        children: [
                          const LoginNumberPage(),
                          BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              if (state is LoginInputCodeState) {
                                return BlocProvider(
                                  create: (context) => LoginVerifyCodeBloc(
                                      authRepository: context
                                          .read<FirebaseAuthRepository>(),
                                      phoneNumber: state.phoneNumber,
                                      verificationId: state.verificationId,
                                      resendToken: state.resendToken),
                                  child: LoginVerifyCodePage(
                                      verificationId: state.verificationId,
                                      phoneNumber: state.phoneNumber,
                                      resendToken: state.resendToken,
                                      lastSendCodeAt: state.lastSendCodeAt),
                                );
                              } else {
                                return const SizedBox();
                              }
                            },
                          ),
                          BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              if (state is LoginInputNameState) {
                                return const LoginNameFormPage();
                              } else {
                                return const SizedBox();
                              }
                            },
                          ),
                          const LoginSuccessPage()
                        ],
                      ),
                    )
                  ],
                ),
              )),
              BlocBuilder<LoginLoadingCubit, bool>(
                builder: (context, state) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: !state
                        ? const SizedBox()
                        : Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: Colors.white60,
                            child: QueryResultLoadingView(
                                loadingText: S.of(context).loading),
                          ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
