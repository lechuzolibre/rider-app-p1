import 'package:flutter_bloc/flutter_bloc.dart';

class LastSendCodeAtCubit extends Cubit<DateTime> {
  LastSendCodeAtCubit({required lastSendCodeAt}) : super(lastSendCodeAt);

  void update() => emit(DateTime.now());
}
