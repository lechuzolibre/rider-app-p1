import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginCodeSentEvent extends LoginEvent {
  final String phoneNumber;
  final String verificationId;
  final int? resendToken;

  const LoginCodeSentEvent(
      {required this.phoneNumber,
      required this.verificationId,
      this.resendToken});

  @override
  List<Object> get props => [phoneNumber];
}

class LoginVerificationCompletedEvent extends LoginEvent {
  final String jwtToken;

  const LoginVerificationCompletedEvent({required this.jwtToken});

  @override
  List<Object> get props => [jwtToken];
}

class LoginNameSubmittedEvent extends LoginEvent {
  const LoginNameSubmittedEvent();

  @override
  List<Object> get props => [];
}

class LoginErrorEvent extends LoginEvent {
  final String message;

  const LoginErrorEvent({required this.message});

  @override
  List<Object> get props => [message];
}

class LoginChangePhoneNumberEvent extends LoginEvent {
  const LoginChangePhoneNumberEvent();

  @override
  List<Object?> get props => [];
}
