import 'package:flutter/material.dart';
import 'package:base_setup/features/shared/app_bar_widgets.dart';
import 'package:base_setup/features/shared/shared_dashboard_wrapper/shared_dashboard_wrapper.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 03 Dec, 2025
*/

class SavedHome extends StatelessWidget {
  const SavedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedDashboardWrapper(
      title: "Saved",
      trailing: AppBarTrailingWidget(onClick: () {}),
      body: null,
    );
  }
}
