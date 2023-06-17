import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scry/Home/bloc/home_bloc.dart';
import 'package:scry/Messages/messages_view.dart';
import 'package:scry/Play/games_feed.dart';
import 'package:scry/Profile/profile_view.dart';
import 'package:scry/Trade/trade_view.dart';
import 'package:showcaseview/showcaseview.dart';

import '../main.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    //* This is for showcase widget
    // WidgetsBinding.instance.addPostFrameCallback((_) =>
    //     ShowCaseWidget.of(context)
    //         .startShowCase([iconKey, messageKey, playKey, profileKey, fabKey]));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final view = {
      0: TradeView(
        fabKey: fabKey,
      ),
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
              destinations: <Widget>[
                Showcase(
                  key: iconKey,
                  description:
                      'The Trade tab will show you who is currently trading in your area',
                  child: NavigationDestination(
                    icon: Icon(Icons.offline_share_rounded),
                    label: 'Trade',
                  ),
                ),
                Showcase(
                  key: messageKey,
                  description:
                      'The Messages tab will show your trade offers and conversations',
                  child: NavigationDestination(
                    icon: Icon(FontAwesomeIcons.message),
                    label: 'Messages',
                  ),
                ),
                Showcase(
                  key: playKey,
                  description:
                      'The Play Tab let you see who wants to play Magic in your area and lets you create games',
                  child: NavigationDestination(
                    icon: Icon(Icons.group),
                    label: 'Play',
                  ),
                ),
                Showcase(
                  key: profileKey,
                  description:
                      'Your Profile has your personal info as well as any ',
                  child: NavigationDestination(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
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
