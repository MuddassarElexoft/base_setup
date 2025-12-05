import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/bottom_app_bar.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 24 Nov, 2025
*/

class Root extends StatefulWidget {
  const Root({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  /// ACTIVE TAB INDEX
  int activeTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CBottomAppBar(
        activeIndex: activeTabIndex,
        onClickNavItem: (int index) {
          activeTabIndex = index;
          widget.navigationShell.goBranch(
            index,
            initialLocation: index == widget.navigationShell.currentIndex,
          );
          setState(() {});
        },
      ),
      body: Center(child: widget.navigationShell),
    );
  }
}
