import 'package:flutter/material.dart';
import 'package:flutter_template/router/routes.dart';
import 'package:go_router/go_router.dart';
import '../features/home/presentation/views/home_screen.dart';
import '../features/home/presentation/views/profile_screen.dart';
import 'home_shell.dart'; // Make sure this file exists from the previous step

// Private navigators keys
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final goRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.home,
  routes: [
    // The StatefulShellRoute maintains the state of each tab
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // MainWrapper handles the Custom Bottom Nav UI
        return HomeShell(navigationShell: navigationShell);
      },
      branches: [
        // BRANCH 1: HOME
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: Routes.home,
              name: 'home',
              builder: (context, state) =>
                  const HomeScreen(), // Replace with real screen
            ),
          ],
        ),

        // BRANCH 2: PROFILE
        StatefulShellBranch(
          navigatorKey: _profileNavigatorKey,
          routes: [
            GoRoute(
              path: Routes.profile,
              name: 'profile',
              builder: (context, state) =>
                  const ProfileScreen(), // Replace with real screen
            ),
          ],
        ),
      ],
    ),
  ],
);
