import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/Play/Game_Model/game_types.dart';
import 'package:scry/Widgets/our_textfield.dart';

import 'bloc/create_game_bloc.dart';

class CreateNewGameView extends StatelessWidget {
  const CreateNewGameView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    List<GameFormats> gameFormats = GameFormats.values.toList();

    return BlocProvider(
      create: (context) => CreateGameBloc(),
      child: BlocBuilder<CreateGameBloc, CreateGameState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              title: Text('Create Game'),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close))
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(children: [
                Title(),
                Description(),
                Location(),
                DateAndTime(),
                Cost(),
                MaxPlayers(),
                Format(),
                CreateButton(),
              ]),
            ),
          );
        },
      ),
    );
  }
}

class CreateButton extends StatelessWidget {
  const CreateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        return ProgressButton.icon(iconedButtons: {
          ButtonState.idle: IconedButton(
              text: "Create",
              icon: const Icon(Icons.add_circle_outlined, color: Colors.white),
              color: theme.colorScheme.primary),
          ButtonState.loading:
              IconedButton(text: "Loading", color: theme.colorScheme.secondary),
          ButtonState.fail: IconedButton(
              text: "Failed",
              icon: const Icon(Icons.cancel, color: Colors.white),
              color: Colors.red.shade300),
          ButtonState.success: IconedButton(
              text: "Success",
              icon: const Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
              color: Colors.green.shade400)
        }, onPressed: () {}, state: state.buttonState);
      },
    );
  }
}

class Format extends StatelessWidget {
  Format({
    super.key,
  });

  final List<GameFormats> gameFormats = GameFormats.values.toList();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: theme.cardColor, borderRadius: BorderRadius.circular(14)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Format'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<GameFormats>(
                        dropdownColor: theme.cardColor,
                        value: gameFormats.first,
                        icon: const Icon(Icons.arrow_drop_down),
                        style: TextStyle(color: theme.colorScheme.primary),
                        onChanged: (GameFormats? value) {
                          // add bloc state call here
                        },
                        items: gameFormats
                            .map((format) => DropdownMenuItem<GameFormats>(
                                  value: format,
                                  child: Text(
                                    format.name,
                                    style: TextStyle(
                                        color:
                                            theme.textTheme.bodyMedium!.color),
                                  ),
                                ))
                            .toList()),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class DateAndTime extends StatelessWidget {
  DateAndTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: theme.cardColor, borderRadius: BorderRadius.circular(14)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Date & Time'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: TextButton(
                      onPressed: () {
                        //! Add function to show date time dialog
                      },
                      child: Text('Anytime'),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class MaxPlayers extends StatelessWidget {
  const MaxPlayers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: theme.cardColor, borderRadius: BorderRadius.circular(14)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Max Players'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      //* add bloc function to decrease amount if not 0
                    },
                    child: Icon(Icons.remove_circle_outline)),
                Container(
                    width: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("4"),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      //* add bloc function to decrease amount if not 0
                    },
                    child: Icon(Icons.add_circle_outline_rounded)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Cost extends StatelessWidget {
  const Cost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        decoration: BoxDecoration(
            color: theme.cardColor, borderRadius: BorderRadius.circular(14)),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Cost'),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      //* add bloc function to decrease amount if not 0
                    },
                    child: Icon(Icons.remove_circle_outline)),
                Container(
                    width: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Free"),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      //* add bloc function to decrease amount if not 0
                    },
                    child: Icon(Icons.add_circle_outline_rounded)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('Location'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: OurTextfield(
            onChanged: () {},
            keyboardType: TextInputType.streetAddress,
            suffixIcon: IconButton(
              color: theme.colorScheme.primary,
              icon: Icon(Icons.location_on),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('Description'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: OurTextfield(minLines: 3, onChanged: () {}),
        ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('Title'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: OurTextfield(onChanged: () {}),
        ),
      ],
    );
  }
}
