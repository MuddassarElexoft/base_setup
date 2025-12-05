import 'package:flutter/material.dart';
import 'package:base_setup/core/constants/constants.dart';
import 'package:base_setup/core/utils/extensions.dart';
import 'package:base_setup/features/shared/c_app_bar.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 25 Nov, 2025
*/

class SharedDashboardWrapper extends StatelessWidget {
  const SharedDashboardWrapper({
    super.key,
    required this.title,
    this.body,
    this.onClickNotifications,
    this.info,
    this.showTrailing = true,
    this.leading,
    this.trailing,
  });

  final String title;
  final Widget? leading;
  final Widget? trailing;

  /// Info about the interface e.g overview
  final String? info;
  final VoidCallback? onClickNotifications;
  final Widget? body;
  final bool showTrailing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kAppbarHeight),
        child: CDashboardAppBar(
          title: title,
          subHeading: info,
          leading: leading,

          trailing: showTrailing ? trailing : null,
        ),
      ),
      body: SafeArea(child: body ?? 0.ht),
    );
  }
}
