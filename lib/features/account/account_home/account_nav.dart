import 'package:base_setup/app_routes.dart';
import 'package:base_setup/features/account/account_home/account_home.dart';
import 'package:go_router/go_router.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 03 Dec, 2025
*/

GoRoute accountNav({String path = Routes.kAccountsDash}) {
  return GoRoute(
    path: path,
    builder: (context, state) {
      return AccountHome();
    },
  );
}
