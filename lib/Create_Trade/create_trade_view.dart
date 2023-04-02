import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/Card_Repo/card_repository.dart';
import 'package:scry/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';

class CreateTradeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<CreateTradeBloc>();

    return BlocBuilder<CreateTradeBloc, CreateTradeState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              backgroundColor: theme.scaffoldBackgroundColor,
              title: Text(
                'Create Trade',
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: bloc.searchController,
                    onChanged: (value) async {
                      bloc.add(CreateTradeEvent.search(query: value));
                    },
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 8),
                        fillColor: theme.cardColor,
                        filled: true,
                        label: Text("Search Card Name"),
                        suffixIcon: IconButton(
                          icon: Icon(
                            CupertinoIcons.clear_circled_solid,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            bloc.add(CreateTradeEvent.clearSearch());
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Container(
                  color: Colors.grey[400],
                  constraints: BoxConstraints(maxHeight: 1),
                ),
                if (state.cardLoadStatus == LoadStatus.loading) ...{
                  Center(
                    child: CircularProgressIndicator(),
                  )
                } else if (state.cardLoadStatus == LoadStatus.success) ...{
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: state.cards.length,
                      itemBuilder: (context, index) {
                        final card = state.cards[index];
                        final imageSmall = card.imageUris?.small ?? '';
                        final imageNormal = card.imageUris?.normal ?? '';

                        return ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            IconButton.filled(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                icon: Icon(Icons.close))
                                          ],
                                        ),
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            child: Image.network(imageNormal)),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FilledButton(
                                              onPressed: () {
                                                bloc.add(
                                                    CreateTradeEvent.selectCard(
                                                        card: card));
                                                Navigator.pop(context);
                                              },
                                              child: Text('Select')),
                                        )
                                      ],
                                    ),
                                  );
                                });
                          },
                          shape: RoundedRectangleBorder(),
                          leading: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: imageSmall == ''
                                ? Icon(Icons.photo)
                                : Image.network(
                                    imageSmall,
                                  ),
                          ),
                          title: Text(card.name ?? ''),
                          trailing: Icon(Icons.chevron_right_rounded),
                        );
                      },
                    ),
                  ),
                } else if (state.cardLoadStatus == LoadStatus.initial) ...{
                  if (state.selectedCard.id != null) ...{
                    const SelectedCard()
                  } else ...{
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'No Card Selected',
                        style: theme.textTheme.titleMedium,
                      ),
                    )
                  },
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextField(
                      maxLines: null,
                      minLines: 3,
                      decoration: InputDecoration(
                          alignLabelWithHint: true,
                          fillColor: theme.cardColor,
                          filled: true,
                          label: Text(
                            "Details",
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: theme.primaryColor),
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  )
                }
              ],
            ));
      },
    );
  }
}

class SelectedCard extends StatelessWidget {
  const SelectedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CreateTradeBloc>();

    return BlocBuilder<CreateTradeBloc, CreateTradeState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: state.selectedCard.imageUris?.normal != null
                          ? Image.network(
                              state.selectedCard.imageUris?.normal ?? '',
                              height: 400,
                            )
                          : Icon(Icons.photo)),
                ],
              ),
              Positioned(
                right: 10,
                top: -10,
                child: IconButton(
                    color: Colors.red,
                    onPressed: () {
                      bloc.add(CreateTradeEvent.clearSelectedCard());
                    },
                    icon: Icon(
                      CupertinoIcons.clear_circled_solid,
                      size: 35,
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
