import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/Home/bloc/home_bloc.dart';
import 'package:scry/Trade/trade_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final view = {
      0: TradeView(),
      1: Text('Messages'),
      2: Text('Play'),
      3: Text('Profile')
    };

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              context
                  .read<HomeBloc>()
                  .add(HomeEvent.updateNavBarIndex(value: index));
            },
            selectedIndex: state.navBarIndex,
            destinations: const <Widget>[
              NavigationDestination(
                icon: Icon(Icons.offline_share_rounded),
                label: 'Trade',
              ),
              NavigationDestination(
                icon: Icon(Icons.message_rounded),
                label: 'Messages',
              ),
              NavigationDestination(
                icon: Icon(Icons.group),
                label: 'Play',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
          body: Center(child: view[state.navBarIndex]),
        );
      },
    );
  }
}