import 'package:flutter_bloc/flutter_bloc.dart';

class LoginLoadingCubit extends Cubit<bool> {
  LoginLoadingCubit() : super(false);

  void showLoading() => emit(true);

  void hideLoading() => emit(false);
}
