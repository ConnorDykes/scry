import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_state_button/progress_button.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  SignUpBloc() : super(SignUpState()) {
    on<_ChangeEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<_ChangePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<_ChangeConfirmPassword>((event, emit) {
      emit(state.copyWith(confirmPassword: event.confirmPassword));
    });
    on<_ChangeFirstName>((event, emit) {
      emit(state.copyWith(firstName: event.firstName));
    });
    on<_ChangeLastName>((event, emit) {
      emit(state.copyWith(lastName: event.lastName));
    });
  }
}
