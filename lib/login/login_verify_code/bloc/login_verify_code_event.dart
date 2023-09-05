abstract class LoginVerifyCodeEvent {
  const LoginVerifyCodeEvent();
}

class LoginVerifyCodeEnteredCodeEvent extends LoginVerifyCodeEvent {
  final String code;

  const LoginVerifyCodeEnteredCodeEvent({required this.code});
}

class LoginVerifyCodeVerificationCompletedEvent extends LoginVerifyCodeEvent {
  final String firebaseToken;

  const LoginVerifyCodeVerificationCompletedEvent(
      {required this.firebaseToken});
}

class LoginVerifyCodeResendCodeRequestedEvent extends LoginVerifyCodeEvent {
  const LoginVerifyCodeResendCodeRequestedEvent();
}

class LoginVerifyCodeErrorEvent extends LoginVerifyCodeEvent {
  final String errorMessage;
  const LoginVerifyCodeErrorEvent({required this.errorMessage});
}

class LoginVerifyCodeChangePhoneNumberEvent extends LoginVerifyCodeEvent {
  const LoginVerifyCodeChangePhoneNumberEvent();
}
