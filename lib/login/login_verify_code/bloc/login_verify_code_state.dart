import 'package:equatable/equatable.dart';

abstract class LoginVerifyCodeState extends Equatable {
  const LoginVerifyCodeState();

  @override
  List<Object> get props => [];
}

class LoginVerifyCodeInputState extends LoginVerifyCodeState {
  const LoginVerifyCodeInputState();

  @override
  List<Object> get props => [];
}

class LoginVerifyCodeErrorState extends LoginVerifyCodeState {
  final String errorMessage;

  const LoginVerifyCodeErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

class LoginVerifyCodeLoadingState extends LoginVerifyCodeState {
  const LoginVerifyCodeLoadingState();

  @override
  List<Object> get props => [];
}

class LoginVerifyCodeVerificationCompletedState extends LoginVerifyCodeState {
  final String uid;

  const LoginVerifyCodeVerificationCompletedState({required this.uid});

  @override
  List<Object> get props => [uid];
}
