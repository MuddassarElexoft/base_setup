import 'package:base_setup/features/root/presentation/root/root.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';
import 'core/utils/ui_helper.dart';
import 'features/dashboard/dashboard_shell.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 24 Nov, 2025
*/

GoRouter routerConfig = GoRouter(
  initialLocation: Routes.kDashboard,
  navigatorKey: UiHelper.navigatorKey,
  routes: [
    // ----------------------
    // Global routes go here
    // ----------------------

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
      ],
    ),
  ],
);
