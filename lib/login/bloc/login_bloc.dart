import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/login/bloc/login_event.dart';
import 'package:ridy/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInputNumberState()) {
    on<LoginCodeSentEvent>((event, emit) async {
      emit(LoginInputCodeState(
          verificationId: event.verificationId,
          resendToken: event.resendToken,
          phoneNumber: event.phoneNumber,
          lastSendCodeAt: DateTime.now()));
    });

    on<LoginVerificationCompletedEvent>((event, emit) async {
      emit(LoginInputNameState(jwtToken: event.jwtToken));
    });

    on<LoginNameSubmittedEvent>(
      (event, emit) async {
        emit(const LoginSuccessState());
      },
    );

    on<LoginChangePhoneNumberEvent>(
      (event, emit) async {
        emit(const LoginInputNumberState());
      },
    );
  }
}
