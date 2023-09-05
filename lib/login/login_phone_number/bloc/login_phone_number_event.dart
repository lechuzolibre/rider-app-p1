import 'package:equatable/equatable.dart';

abstract class LoginPhoneNumberEvent extends Equatable {
  const LoginPhoneNumberEvent();
}

class LoginPhoneNumberRequestedEvent extends LoginPhoneNumberEvent {
  final String countryCode;
  final String phoneNumber;

  const LoginPhoneNumberRequestedEvent(
      {required this.countryCode, required this.phoneNumber});

  @override
  List<Object> get props => [phoneNumber];
}

class LoginPhoneNumberVerificationCompletedEvent extends LoginPhoneNumberEvent {
  final String firebaseToken;

  const LoginPhoneNumberVerificationCompletedEvent(
      {required this.firebaseToken});

  @override
  List<Object> get props => [firebaseToken];
}

class LoginPhoneNumberErrorEvent extends LoginPhoneNumberEvent {
  final String message;

  const LoginPhoneNumberErrorEvent({required this.message});

  @override
  List<Object> get props => [message];
}

class LoginPhoneNumberCodeSentEvent extends LoginPhoneNumberEvent {
  final String phoneNumber;
  final String verificationId;
  final int? resendToken;

  const LoginPhoneNumberCodeSentEvent(
      {required this.phoneNumber,
      required this.verificationId,
      required this.resendToken});

  @override
  List<Object> get props => [phoneNumber, verificationId, resendToken ?? ''];
}
