import 'package:flutter/material.dart';

import 'core/constants/constants.dart';
import 'core/theme/theme.dart';
import 'router_config.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 25 Nov, 2025
*/

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: darkTheme,
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      title: kAppName,
    );
  }
}
