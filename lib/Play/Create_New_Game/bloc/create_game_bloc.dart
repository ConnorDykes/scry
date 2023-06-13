import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Create_New_Game/create_game_repository.dart';
import 'package:scry/Play/Game_Model/game_model.dart';
import 'package:scry/Play/Game_Model/game_types.dart';

part 'create_game_event.dart';
part 'create_game_state.dart';
part 'create_game_bloc.freezed.dart';

class CreateGameBloc extends Bloc<CreateGameEvent, CreateGameState> {
  final createGameRepo = CreateGameRepo();
  final locationController = TextEditingController();
  final UserModel user;

  CreateGameBloc({required this.user}) : super(CreateGameState(user: user)) {
    on<_ChangeTitle>((event, emit) {
      emit(state.copyWith(title: event.title));
    });
    on<_ChangeDescription>((event, emit) {
      emit(state.copyWith(description: event.description));
    });
    on<_ChangeLocation>((event, emit) {
      emit(state.copyWith(location: event.location));
    });

    on<_GetCurrentLocation>((event, emit) async {
      Future<bool> _handleLocationPermission() async {
        bool serviceEnabled;
        LocationPermission permission;

        serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if (!serviceEnabled) {
          ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
              content: Text(
                  'Location services are disabled. Please enable the services')));
          return false;
        }
        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
                content: Text('Location permissions are denied')));
            return false;
          }
        }
        if (permission == LocationPermission.deniedForever) {
          ScaffoldMessenger.of(event.context).showSnackBar(const SnackBar(
              content: Text(
                  'Location permissions are permanently denied, we cannot request permissions.')));
          return false;
        }
        return true;
      }

      Future<void> _getAddressFromLatLng(Position position) async {
        await placemarkFromCoordinates(position.latitude, position.longitude)
            .then((List<Placemark> placemarks) {
          Placemark place = placemarks[0];
          emit(state.copyWith(
              location:
                  '''${place.street}, ${place.locality}, ${place.postalCode}'''));
          locationController.text =
              '${place.street}, ${place.locality}, ${place.postalCode}';
          print(state.location);
        }).catchError((e) {
          debugPrint(e);
        });
      }

      final hasPermission = await _handleLocationPermission();
      if (!hasPermission) return;
      Position? _currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      await _getAddressFromLatLng(_currentPosition);
    });

    on<_ChangeDateAndTime>((event, emit) {
      emit(state.copyWith(dateAndTime: event.dateAndTime));
    });

    on<_ChangeCost>((event, emit) {
      emit(state.copyWith(cost: event.cost));
    });

    on<_ChangeMaxPlayers>((event, emit) {
      emit(state.copyWith(maxPlayerCount: event.maxPlayers));
    });

    on<_ChangeFormat>((event, emit) {
      emit(state.copyWith(format: event.format));
    });
    on<_CreateGame>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));

      final game = {
        'creator': state.user.toJson(),
        'title': state.title,
        'description': state.description,
        'cost': state.cost,
        'location': state.location,
        'dateAndTime': state.dateAndTime,
        'maxPlayerCount': state.maxPlayerCount,
        'minPlayerCount': state.minPlayerCount,
        'players': state.players,
        'format': state.format.name,
      };

      try {
        await createGameRepo.createGame(game: game);
        emit(state.copyWith(buttonState: ButtonState.success));
        Navigator.pop(event.context);
      } catch (e) {
        emit(state.copyWith(buttonState: ButtonState.fail));
      }

      //upload to firebase then emit button success and pop view
    });

    on<_UpdateGame>((event, emit) async {
      emit(state.copyWith(buttonState: ButtonState.loading));

      final game = {
        'creator': state.user.toJson(),
        'title': state.title,
        'description': state.description,
        'cost': state.cost,
        'location': state.location,
        'dateAndTime': state.dateAndTime,
        'maxPlayerCount': state.maxPlayerCount,
        'minPlayerCount': state.minPlayerCount,
        'players': state.players,
        'format': state.format.name,
      };

      try {
        await createGameRepo.updateGame(game: game, gameDocID: event.gameDocID);
        emit(state.copyWith(buttonState: ButtonState.success));
      } catch (e) {
        emit(state.copyWith(buttonState: ButtonState.fail));
      }

      //upload to firebase then emit button success and pop view
    });
  }
}
