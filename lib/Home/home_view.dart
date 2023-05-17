import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scry/Home/bloc/home_bloc.dart';
import 'package:scry/Messages/messages_view.dart';
import 'package:scry/Play/games_feed.dart';
import 'package:scry/Profile/profile_view.dart';
import 'package:scry/Trade/trade_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final view = {
      0: const TradeView(),
      1: const MessagesView(),
      2: const GamesFeed(),
      3: const ProfileView()
    };

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Scaffold(
            bottomNavigationBar: NavigationBar(
              indicatorColor: theme.colorScheme.primary,
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
                  icon: Icon(FontAwesomeIcons.message),
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
          ),
        );
      },
    );
  }
}
