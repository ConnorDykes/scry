import 'package:flutter/material.dart';

class TradeView extends StatelessWidget {
  const TradeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/CreateTrade');
        },
        child: Icon(
          Icons.add_rounded,
          size: 45,
        ),
      ),
      body: ListView(children: [
        ExampleCard(),
        ExampleCard(),
        ExampleCard(),
        ExampleCard(),
        ExampleCard(),
        ExampleCard(),
        ExampleCard(),
        ExampleCard(),
        ExampleCard(),
      ]),
    );
  }
}

class ExampleCard extends StatelessWidget {
  const ExampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Card Name',
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            color: Colors.blue[200],
            height: 225,
            width: 150,
            child: Center(child: Text('Card')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                textAlign: TextAlign.center,
                'Looking to trade for this card. Let me know what you want for it.'),
          )
        ]),
      ),
    );
  }
}
