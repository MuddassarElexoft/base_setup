import 'package:base_setup/features/account/account_shell.dart';
import 'package:base_setup/features/saved/saved_shell.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';
import 'core/utils/ui_helper.dart';
import 'features/dashboard/dashboard_shell.dart';
import 'features/root/root/root.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 24 Nov, 2025
*/

GoRouter routerConfig = GoRouter(
  initialLocation: Routes.kDashboard,
  navigatorKey: UiHelper.navigatorKey,
  routes: [
    /**
     * -----------------
     * Nested Nav Graphs
     * -----------------
     */
    StatefulShellRoute.indexedStack(
      key: UiHelper.shellKey,
      parentNavigatorKey: UiHelper.navigatorKey,
      builder: (context, state, navigationShell) {
        return Root(navigationShell: navigationShell);
      },
      branches: [
        /**
         * ---------
         * DASHBOARD
         * ---------
         */
        dashboardShell(),

        /**
         * ---------
         * SAVED
         * ---------
         */
        savedShell(),

        /**
         * ---------
         * ACCOUNT
         * ---------
         */
        accountShell(),
      ],
    ),
  ],
);
