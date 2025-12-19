import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart' show CupertinoPage;

import 'test_home.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 01 Dec, 2025
*/

class TestHomeNav {
  // Route name
  static const route = '/test_home';

  /// ROUTE
  static GoRoute testHome({String? parentRoute}) {
    return GoRoute(
      path: route,
      pageBuilder: (context, state) {
        return CupertinoPage(
        child: TestHomeScreen(parentRoute: parentRoute),
        key: state.pageKey,
        );
      },
    );
  }
}

