import 'package:flutter/material.dart';
import 'package:base_setup/features/shared/app_bar_widgets.dart';
import 'package:base_setup/features/shared/shared_dashboard_wrapper/shared_dashboard_wrapper.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 03 Dec, 2025
*/

class AccountHome extends StatefulWidget {
  const AccountHome({super.key});

  @override
  State<AccountHome> createState() => _AccountHomeState();
}

class _AccountHomeState extends State<AccountHome> {
  bool pushNotifications = false;
  bool soundVibrations = false;
  bool darkMode = true;
  bool profileVisibility = false;

  @override
  Widget build(BuildContext context) {
    return SharedDashboardWrapper(
      title: "Accounts",
      trailing: AppBarTrailingWidget(onClick: () {}),
      body: null,
    );
  }
}
