import 'package:base_setup/app_routes.dart';
import 'package:base_setup/core/utils/ui_helper.dart';
import 'package:go_router/go_router.dart';

import 'presentation/dashboard_screen/dashboard_screen_nav.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 27 Nov, 2025
*/

StatefulShellBranch dashboardShell() {
  return StatefulShellBranch(
    navigatorKey: UiHelper.dashboardNavigatorKey,
    initialLocation: Routes.kDashboard,
    routes: [
      /**
       * ----------------
       * Dashboard Screen
       * ----------------
       */
      dashboardScreenNav(),
    ],
  );
}
