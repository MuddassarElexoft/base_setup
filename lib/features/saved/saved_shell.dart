import 'package:base_setup/app_routes.dart';
import 'package:base_setup/core/utils/ui_helper.dart';
import 'package:base_setup/features/saved/saved_home/saved_nav.dart';
import 'package:go_router/go_router.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 03 Dec, 2025
*/

StatefulShellBranch savedShell() {
  return StatefulShellBranch(
    navigatorKey: UiHelper.saveNavigatorKey,
    initialLocation: Routes.kSavedDash,
    routes: [
      /**
       * ----------------
       * ACCOUNT SCREEN
       * ----------------
       */
      savedNav(),
    ],
  );
}
