import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<_ChangeEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<_ChangePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
  }
}
