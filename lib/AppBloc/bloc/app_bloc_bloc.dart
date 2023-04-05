import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scry/Authentication/user_model.dart';

part 'app_bloc_event.dart';
part 'app_bloc_state.dart';
part 'app_bloc_bloc.freezed.dart';

class AppBlocBloc extends Bloc<AppBlocEvent, AppBlocState> {
  AppBlocBloc() : super(AppBlocState()) {
    on<AppBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
