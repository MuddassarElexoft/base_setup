import 'package:base_setup/app_routes.dart';
import 'package:base_setup/features/saved/saved_home/saved_home.dart';
import 'package:go_router/go_router.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 03 Dec, 2025
*/

GoRoute savedNav({String path = Routes.kSavedDash}) {
  return GoRoute(
    path: path,
    builder: (context, state) {
      return SavedHome();
    },
  );
}
