import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:scry/AppBloc/bloc/app_bloc_bloc.dart';
import 'package:scry/Authentication/user_model.dart';
import 'package:scry/Sign_In/sign_in_view.dart';
import 'package:scry/Trade/Create_Trade/bloc/create_trade_bloc.dart';
import 'package:scry/Trade/trade_model.dart';
import 'package:scry/card_model.dart';
import 'package:scry/constants.dart';

class CreateTradeView extends StatelessWidget {
  final bool proposeTrade;
  final TradePostModel trade;

  CreateTradeView(
      {this.proposeTrade = false, this.trade = TradePostModel.empty});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<CreateTradeBloc>();
    final appBloc = context.read<AppBlocBloc>();

    return BlocListener<CreateTradeBloc, CreateTradeState>(
      listener: (context, state) {
        if (state.buttonState == ButtonState.success) {
          Future.delayed(Duration(seconds: 1), () {
            Navigator.pop(context);
          });

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: theme.primaryColor,
              content: Row(
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: Colors.white,
                  ),
                  Expanded(
                      child: proposeTrade
                          ? Text('Trade Offer Was Successfuly Sent')
                          : Text('Trade Was Successfuly Created')),
                ],
              )));
        }
      },
      child: BlocBuilder<CreateTradeBloc, CreateTradeState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: proposeTrade == true ? false : true,
                surfaceTintColor: Colors.transparent,
                backgroundColor: theme.scaffoldBackgroundColor,
                title: Text(
                  proposeTrade == true ? 'Offer A Trade' : 'Create Trade',
                ),
              ),
              body: Column(
                children: [
                  SearchCardTextField(),
                  if (state.cardLoadStatus == LoadStatus.loading &&
                      bloc.state.queryString.isNotEmpty) ...{
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  } else if (state.cardLoadStatus == LoadStatus.success &&
                      bloc.state.queryString != '') ...{
                    if (state.cards.isEmpty) ...{
                      Text('No Cards Found')
                    } else ...{
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
                                                child:
                                                    Image.network(imageNormal)),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: FilledButton(
                                                  onPressed: () {
                                                    bloc.add(CreateTradeEvent
                                                        .selectCard(
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
                    }
                  } else if (state.cardLoadStatus == LoadStatus.initial ||
                      bloc.state.queryString == '') ...{
                    if (state.selectedCards.isNotEmpty) ...{
                      const SelectedCard()
                    } else ...{
                      PlaceholderCard()
                    },
                    Container(
                      color: Colors.grey[400],
                      constraints: BoxConstraints(maxHeight: 1),
                    ),
                    DetailsTextField(),
                    if (state.selectedCards.isNotEmpty) ...{
                      ProgressButton.icon(
                          iconedButtons: {
                            ButtonState.idle: IconedButton(
                                text: proposeTrade == true ? "Offer" : "Create",
                                icon: proposeTrade == true
                                    ? Icon(Icons.swap_vert_outlined,
                                        color: Colors.white)
                                    : Icon(Icons.add_circle_outlined,
                                        color: Colors.white),
                                color: theme.colorScheme.primary),
                            ButtonState.loading: IconedButton(
                                text: "Loading",
                                color: theme.colorScheme.secondary),
                            ButtonState.fail: IconedButton(
                                text: "Failed",
                                icon: Icon(Icons.cancel, color: Colors.white),
                                color: Colors.red.shade300),
                            ButtonState.success: IconedButton(
                                text: "Success",
                                icon: Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                ),
                                color: Colors.green.shade400)
                          },
                          onPressed: () {
                            proposeTrade
                                ? bloc
                                    .add(CreateTradeEvent.createTradeProposal())
                                : bloc.add(CreateTradeEvent.createTrade(
                                    user: appBloc.state.user));
                          },
                          state: state.buttonState),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          state.uploadError,
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    }
                  }
                ],
              ));
        },
      ),
    );
  }
}

class PlaceholderCard extends StatelessWidget {
  const PlaceholderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: .25,
                image: AssetImage('assets/card_back.png')),
            borderRadius: BorderRadius.circular(15)),
        height: 400,
        width: 285,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            'No Card Selected,\nSearch a Card To Select It',
            style: theme.textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}

class DetailsTextField extends StatelessWidget {
  const DetailsTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final createTradeBloc = context.read<CreateTradeBloc>();
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        maxLines: null,
        minLines: 2,
        onChanged: (value) =>
            createTradeBloc.add(CreateTradeEvent.updateDetails(details: value)),
        decoration: InputDecoration(
            alignLabelWithHint: true,
            fillColor: theme.cardColor,
            filled: true,
            hintText: "Trade Details",
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.primaryColor),
                borderRadius: BorderRadius.circular(15)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.dividerColor),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}

class SearchCardTextField extends StatelessWidget {
  const SearchCardTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bloc = context.read<CreateTradeBloc>();

    return Padding(
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
            hintText: "Search Card Name",
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
                borderSide: BorderSide(color: theme.dividerColor),
                borderRadius: BorderRadius.circular(15))),
      ),
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
                      child: state.selectedCards.first.imageUris?.normal != null
                          ? FlipCard(
                              autoFlipDuration:
                                  const Duration(milliseconds: 500),
                              fill: Fill.fillBack,
                              side: CardSide.BACK,
                              front: Image.network(
                                state.selectedCards.first.imageUris?.normal ??
                                    '',
                                height: 400,
                              ),
                              back: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage('assets/card_back.png')),
                                    borderRadius: BorderRadius.circular(15)),
                                height: 400,
                                width: 285,
                              ),
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