import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart' show CupertinoPage;

import '{{name.snakeCase()}}.dart';

/*
 * Author @ {{author}}
 * Date @ {{date}}
*/

class {{name.pascalCase()}}Nav {
  // Route name
  static const route = '/{{name.snakeCase()}}';

  /// ROUTE
  static GoRoute {{name.camelCase()}}({String? parentRoute}) {
    return GoRoute(
      path: route,
      pageBuilder: (context, state) {
        return CupertinoPage(
        child: {{name.pascalCase()}}Screen(parentRoute: parentRoute),
        key: state.pageKey,
        );
      },
    );
  }
}
