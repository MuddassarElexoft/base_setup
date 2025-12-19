import 'package:flutter/material.dart' show ChangeNotifier;
import '{{name.snakeCase()}}_state.dart';

/*
 * Author @ {{author}}
 * Date @ {{date}}
*/

class {{name.pascalCase()}}ViewModel extends ChangeNotifier {
  /// CONSTRUCTOR
  {{name.pascalCase()}}ViewModel();

  /// PROPERTIES
  final {{name.pascalCase()}}State _state = {{name.pascalCase()}}State();

  /// METHODS
  {{name.pascalCase()}}State get state => _state;
}
