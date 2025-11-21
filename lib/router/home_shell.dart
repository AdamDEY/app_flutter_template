import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/widgets/custom_bottom_nav.dart';

class HomeShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const HomeShell({super.key, required this.navigationShell});

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when clicking the bottom bar:
      // if you are already on the tab, go to the root of that tab.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This 'child' is the screen content (Home or Profile)
      body: navigationShell,
      // We wrap the nav bar in a stack or place it here.
      // For a floating look, we extend body behind the bar:
      extendBody: true,
      bottomNavigationBar: CustomBottomNav(
        currentIndex: navigationShell.currentIndex,
        onTap: _goBranch,
      ),
    );
  }
}
