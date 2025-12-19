import 'package:flutter/material.dart' show ChangeNotifier;
import 'test_home_state.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 01 Dec, 2025
*/

class TestHomeViewModel extends ChangeNotifier {
  /// CONSTRUCTOR
  TestHomeViewModel();

  /// PROPERTIES
  final TestHomeState _state = TestHomeState();

  /// METHODS
  TestHomeState get state => _state;
}

