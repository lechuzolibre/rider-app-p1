import 'package:equatable/equatable.dart';

abstract class LoginPhoneNumberState extends Equatable {
  const LoginPhoneNumberState();
}

class LoginPhoneNumberInitialState extends LoginPhoneNumberState {
  const LoginPhoneNumberInitialState();

  @override
  List<Object> get props => [];
}

class LoginPhoneNumberLoadingState extends LoginPhoneNumberState {
  const LoginPhoneNumberLoadingState();

  @override
  List<Object> get props => [];
}

class LoginPhoneNumberCodeSentState extends LoginPhoneNumberState {
  final String phoneNumber;
  final String verificationId;
  final int? resendToken;

  const LoginPhoneNumberCodeSentState(
      {required this.phoneNumber,
      required this.verificationId,
      this.resendToken});

  @override
  List<Object> get props => [phoneNumber, verificationId, resendToken ?? 0];
}

class LoginPhoneNumberVerificationCompletedState extends LoginPhoneNumberState {
  final String firebaseToken;

  const LoginPhoneNumberVerificationCompletedState(
      {required this.firebaseToken});

  @override
  List<Object> get props => [firebaseToken];
}

class LoginPhoneNumberErrorState extends LoginPhoneNumberState {
  final String message;

  const LoginPhoneNumberErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
