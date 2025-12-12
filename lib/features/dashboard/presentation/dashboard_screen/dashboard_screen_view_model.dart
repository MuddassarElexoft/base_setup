import 'package:base_setup/features/dashboard/presentation/dashboard_screen/dashboard_screen_state.dart';
import 'package:flutter/foundation.dart' show ChangeNotifier;

/*
 * Author @ Muhammad Muddassar
 * Date @ 12 December, 2025
*/


/// VIEW MODEL IS A CHANGE NOTIFIER FOR EACH INDIVIDUAL VIEW / SCREEN
/// IT MANIPULATES THE STATE CLASS WHICH IS BEING LISTENED IN VIEW.
class DashboardViewModel extends ChangeNotifier {

  /// CONSTRUCTOR
  DashboardViewModel();

  /// PROPERTIES
  final _state = DashboardScreenState();

  /// Methods
  DashboardScreenState get state => _state;
}