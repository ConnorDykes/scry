import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scry/Home/bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final view = {
      0: Text('Trade'),
      1: Text('Play'),
      2: Text('Profile'),
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
                icon: Icon(Icons.group),
                label: 'Play',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person),
                icon: Icon(Icons.bookmark_border),
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
