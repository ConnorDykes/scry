import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Create_New_Game/create_new_game_view.dart';
import 'package:scry/Play/Game_Model/game_types.dart';
import 'package:scry/Play/game_tile.dart';
import 'package:scry/Sign_In/sign_in_modal.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';

class GamesFeed extends StatelessWidget {
  const GamesFeed({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = AppBlocBloc();
    final items = [
      // GameTile(
      //   title: "Lets Play Games",
      //   format: GameFormats.Legacy,
      //   userID: '',
      // ),
    ];

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (appBloc.state.user == UserModel.empty) {
              SignInModal()
                  .showSignInModal(context: context)
                  .then((value) => value
                      ? showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => const FractionallySizedBox(
                                heightFactor: .9,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    child: CreateNewGameView()),
                              ))
                      : null);
            } else {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const FractionallySizedBox(
                        heightFactor: .9,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: CreateNewGameView()),
                      ));
            }
          },
          child: const Icon(
            Icons.group_add_rounded,
            size: 35,
          ),
        ),
        body: Text('games')
        //Add StreamBuilder

        );
  }
}
