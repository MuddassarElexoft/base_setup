import 'package:base_setup/app_routes.dart';
import 'package:base_setup/core/utils/ui_helper.dart';
import 'package:base_setup/features/account/account_home/account_nav.dart';
import 'package:go_router/go_router.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 03 Dec, 2025
*/

StatefulShellBranch accountShell() {
  return StatefulShellBranch(
    navigatorKey: UiHelper.accountNavigatorKey,
    initialLocation: Routes.kAccountsDash,
    routes: [
      /**
       * ----------------
       * ACCOUNT SCREEN
       * ----------------
       */
      accountNav(),
    ],
  );
}
