import 'package:flutter/material.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Play/Create_New_Game/create_new_game_view.dart';

class GamesFeed extends StatelessWidget {
  const GamesFeed({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = AppBlocBloc();
    final items = [
      ListTile(
        leading: CircleAvatar(
          radius: 30,
        ),
        title: Text("Monday Night Magic"),
        subtitle: Text("Format: Commander"),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14), color: Colors.white),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
            ),
            trailing: Icon(Icons.chevron_right_rounded),
            title: Text("Monday Night Magic"),
            subtitle: Text("Format: Commander"),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            surfaceTintColor: Colors.green,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
              ),
              trailing: Icon(Icons.chevron_right_rounded),
              title: Text("Monday Night Magic"),
              subtitle: Text("Format: Commander"),
            )),
      )
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (appBloc.state.user == UserModel.empty) {
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
                    )).then((value) {
              if (value == true) {
                Navigator.pushNamed(context, '/CreateTrade');
              }
            });
          } else {
            Navigator.pushNamed(context, '/CreateTrade');
          }
        },
        child: const Icon(
          Icons.group_add_rounded,
          size: 35,
        ),
      ),
      body: ListView(children: items),
    );
  }
}
