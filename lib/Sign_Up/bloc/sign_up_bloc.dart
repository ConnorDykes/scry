import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  SignUpBloc() : super(SignUpState()) {
    on<SignUpEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
