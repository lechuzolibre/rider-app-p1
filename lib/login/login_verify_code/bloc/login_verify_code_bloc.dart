import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/login/firebase_auth_repository.dart';

import 'login_verify_code_event.dart';
import 'login_verify_code_state.dart';

class LoginVerifyCodeBloc
    extends Bloc<LoginVerifyCodeEvent, LoginVerifyCodeState> {
  final FirebaseAuthRepository authRepository;
  final String phoneNumber;
  final String verificationId;
  final int? resendToken;

  LoginVerifyCodeBloc(
      {required this.authRepository,
      required this.phoneNumber,
      required this.verificationId,
      required this.resendToken})
      : super(const LoginVerifyCodeInputState()) {
    on<LoginVerifyCodeEnteredCodeEvent>((event, emit) async {
      emit(const LoginVerifyCodeLoadingState());
      authRepository.verifyPhoneNumberWithCode(
          verificationId,
          event.code,
          (uid) => {
                add(LoginVerifyCodeVerificationCompletedEvent(
                    firebaseToken: uid))
              },
          (message) => {add(LoginVerifyCodeErrorEvent(errorMessage: message))});
    });

    on<LoginVerifyCodeResendCodeRequestedEvent>((event, emit) async {
      emit(const LoginVerifyCodeLoadingState());
      authRepository.verifyPhoneNumber(
          phoneNumber,
          resendToken,
          (verificationId, resendToken) =>
              {emit(const LoginVerifyCodeInputState())},
          (firebaseToken) => {
                emit(LoginVerifyCodeVerificationCompletedState(
                    uid: firebaseToken))
              },
          (message) =>
              {emit(LoginVerifyCodeErrorState(errorMessage: message))});
    });

    on<LoginVerifyCodeVerificationCompletedEvent>((event, emit) {
      emit(LoginVerifyCodeVerificationCompletedState(uid: event.firebaseToken));
    });

    on<LoginVerifyCodeErrorEvent>((event, emit) {
      emit(LoginVerifyCodeErrorState(errorMessage: event.errorMessage));
    });
  }
}
