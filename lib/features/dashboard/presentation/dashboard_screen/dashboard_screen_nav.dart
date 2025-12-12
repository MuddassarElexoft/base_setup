import 'package:base_setup/app_routes.dart';
import 'package:base_setup/features/dashboard/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:go_router/go_router.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 27 Nov, 2025
*/

GoRoute dashboardScreenNav({String path = Routes.kDashboard}) {
  return GoRoute(
    path: path,
    builder: (context, state) {
      return DashboardScreen();
    },
    routes: [],
  );
}
