import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.swap_vert),
                        Text('Trade Offers'),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.message),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text('Messages'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[Offers(), Messages()],
        ),
      ),
    );
    ;
  }
}

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Offers'),
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Messages'),
    );
  }
}
