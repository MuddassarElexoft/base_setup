import 'package:flutter/material.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 25 Nov, 2025
*/

class CDashboardAppBar extends StatelessWidget {
  const CDashboardAppBar({
    super.key,
    required this.title,
    this.subHeading,
    this.trailing,
    this.leading,
  });

  final String title;
  final String? subHeading;
  final Widget? trailing;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 12,
          children: [
            /// Leading Widget
            if (leading != null) leading!,

            /// Leading
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  if (subHeading != null)
                    Text(
                      subHeading!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.surfaceContainer,
                      ),
                    ),
                ],
              ),
            ),

            /// TRAILING
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
