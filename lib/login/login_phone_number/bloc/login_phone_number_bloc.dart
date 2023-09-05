import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridy/login/firebase_auth_repository.dart';
import 'package:ridy/login/login_phone_number/bloc/login_phone_number_event.dart';
import 'package:ridy/login/login_phone_number/bloc/login_phone_number_state.dart';

class LoginPhoneNumberBloc
    extends Bloc<LoginPhoneNumberEvent, LoginPhoneNumberState> {
  final FirebaseAuthRepository authRepository;
  LoginPhoneNumberBloc({required this.authRepository})
      : super(const LoginPhoneNumberInitialState()) {
    on<LoginPhoneNumberRequestedEvent>((event, emit) {
      emit(const LoginPhoneNumberLoadingState());
      authRepository
          .verifyPhoneNumber(event.countryCode + event.phoneNumber, null,
              (String verificationId, int? resendToken) {
        add(LoginPhoneNumberCodeSentEvent(
          phoneNumber: event.phoneNumber,
          verificationId: verificationId,
          resendToken: resendToken,
        ));
      }, (String firebaseToken) {
        add(LoginPhoneNumberVerificationCompletedEvent(
          firebaseToken: firebaseToken,
        ));
      }, (String message) {
        add(LoginPhoneNumberErrorEvent(message: message));
      });
    });

    on<LoginPhoneNumberVerificationCompletedEvent>((event, emit) {
      emit(LoginPhoneNumberVerificationCompletedState(
          firebaseToken: event.firebaseToken));
    });

    on<LoginPhoneNumberErrorEvent>((event, emit) {
      emit(LoginPhoneNumberErrorState(message: event.message));
    });

    on<LoginPhoneNumberCodeSentEvent>((event, emit) {
      emit(LoginPhoneNumberCodeSentState(
          phoneNumber: event.phoneNumber,
          verificationId: event.verificationId,
          resendToken: event.resendToken));
    });
  }
}
