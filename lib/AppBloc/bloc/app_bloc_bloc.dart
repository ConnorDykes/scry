import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/auth_repo.dart';
import 'package:scry/Authentication/user_model.dart';

part 'app_bloc_event.dart';
part 'app_bloc_state.dart';
part 'app_bloc_bloc.freezed.dart';

class AppBlocBloc extends Bloc<AppBlocEvent, AppBlocState> {
  final authRepo = AuthRepo();

  AppBlocBloc() : super(AppBlocState()) {
    on<_UpdateUser>((event, emit) {
      emit(state.copyWith(user: event.user));
    });
  }
}
