import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Play/Game_Model/game_types.dart';
import 'package:scry/Widgets/our_textfield.dart';

import 'bloc/create_game_bloc.dart';

class CreateNewGameView extends StatelessWidget {
  const CreateNewGameView({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>().state;
    return BlocProvider(
        create: (context) => CreateGameBloc(user: appBloc.user),
        child: Scaffold(
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
        ));
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
        return ProgressButton.icon(
            iconedButtons: {
              ButtonState.idle: IconedButton(
                  text: "Create",
                  icon: const Icon(Icons.add_circle_outlined,
                      color: Colors.white),
                  color: theme.colorScheme.primary),
              ButtonState.loading: IconedButton(
                  text: "Loading", color: theme.colorScheme.secondary),
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
            },
            onPressed: () {
              context
                  .read<CreateGameBloc>()
                  .add(CreateGameEvent.createGame(context: context));
            },
            state: state.buttonState);
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
    final bloc = context.read<CreateGameBloc>();
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(14)),
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
                      child: DropdownButton<GameFormats>(
                          dropdownColor: theme.cardColor,
                          value: state.format,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: theme.colorScheme.primary,
                          ),
                          underline: Container(
                            height: 2,
                            color: theme.colorScheme.primary,
                          ),
                          style: TextStyle(color: theme.colorScheme.primary),
                          onChanged: (GameFormats? format) {
                            bloc.add(
                                CreateGameEvent.changeFormat(format: format!));
                          },
                          items: gameFormats
                              .map((format) => DropdownMenuItem<GameFormats>(
                                    value: format,
                                    child: Text(
                                      format.name,
                                      style: TextStyle(
                                          color: theme
                                              .textTheme.bodyMedium!.color),
                                    ),
                                  ))
                              .toList()),
                    )
                  ],
                ),
              ),
            ]),
          ),
        );
      },
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
    final bloc = context.read<CreateGameBloc>();

    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            decoration: BoxDecoration(
                color: state.dateAndTime == null
                    ? Colors.red[100]
                    : theme.cardColor,
                borderRadius: BorderRadius.circular(14)),
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
                            showModalBottomSheet(
                                showDragHandle: true,
                                context: context,
                                builder: (_) => Container(
                                      color: theme.cardColor,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 250,
                                            child: CupertinoDatePicker(
                                                initialDateTime: DateTime.now(),
                                                onDateTimeChanged: (val) {
                                                  bloc.add(CreateGameEvent
                                                      .changeDateAndTime(
                                                          dateAndTime: val));
                                                }),
                                          ),
                                          OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                  side: BorderSide(
                                                      color: theme.colorScheme
                                                          .primary)),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text('Save'))
                                        ],
                                      ),
                                    ));
                          },
                          child: Text(
                            state.dateAndTime == null
                                ? 'Tap To Select Time'
                                : Jiffy.parse(state.dateAndTime.toString())
                                    .yMMMMEEEEdjm,
                            style: TextStyle(
                                color: state.dateAndTime == null
                                    ? Colors.red
                                    : Colors.green),
                          ),
                        ))
                  ],
                ),
              ),
            ]),
          ),
        );
      },
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
    final bloc = context.read<CreateGameBloc>();
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(14)),
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
                          if (state.maxPlayerCount > 2) {
                            bloc.add(CreateGameEvent.changeMaxPlayers(
                                maxPlayers: state.maxPlayerCount - 1));
                          }
                        },
                        child: Icon(Icons.remove_circle_outline)),
                    Container(
                        width: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(state.maxPlayerCount.toString()),
                          ],
                        )),
                    TextButton(
                        onPressed: () {
                          bloc.add(CreateGameEvent.changeMaxPlayers(
                              maxPlayers: state.maxPlayerCount + 1));
                        },
                        child: Icon(Icons.add_circle_outline_rounded)),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
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
    final bloc = context.read<CreateGameBloc>();
    return BlocBuilder<CreateGameBloc, CreateGameState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: BorderRadius.circular(14)),
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
                          if (state.cost > 0) {
                            bloc.add(CreateGameEvent.changeCost(
                                cost: state.cost - 1));
                          }
                        },
                        child: Icon(Icons.remove_circle_outline)),
                    Container(
                        width: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(state.cost == 0
                                ? "Free"
                                : '\$ ${state.cost.toString()}'),
                          ],
                        )),
                    TextButton(
                        onPressed: () {
                          bloc.add(
                              CreateGameEvent.changeCost(cost: state.cost + 1));
                        },
                        child: Icon(Icons.add_circle_outline_rounded)),
                  ],
                ),
              ),
            ]),
          ),
        );
      },
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
    final bloc = context.read<CreateGameBloc>();
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
            controller: bloc.locationController,
            onChanged: (value) {
              bloc.add(CreateGameEvent.changeLocation(location: value));
            },
            keyboardType: TextInputType.streetAddress,
            suffixIcon: IconButton(
              color: theme.colorScheme.primary,
              icon: Icon(Icons.location_on),
              onPressed: () {
                bloc.add(CreateGameEvent.getCurrentLocation(context: context));
              },
            ),
          ),
        )
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
    final bloc = context.read<CreateGameBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('Description'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: OurTextfield(
              minLines: 3,
              onChanged: (value) => bloc.add(CreateGameEvent.changeDescription(
                  description: value.toString()))),
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
    final bloc = context.read<CreateGameBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text('Title'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: OurTextfield(
              controller: TextEditingController(),
              onChanged: (value) => bloc
                  .add(CreateGameEvent.changeTitle(title: value.toString()))),
        ),
      ],
    );
  }
}
