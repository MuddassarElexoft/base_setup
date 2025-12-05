import 'package:flutter/material.dart';
import 'package:base_setup/features/shared/app_bar_widgets.dart';
import 'package:base_setup/features/shared/shared_dashboard_wrapper/shared_dashboard_wrapper.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 05 Dec, 2025
*/

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return SharedDashboardWrapper(
      title: "",
      leading: Text(
        "Dashboard",
        style: theme.textTheme.headlineMedium?.copyWith(
          color: colors.onSurface,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: AppBarTrailingWidget(onClick: () {}),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// -------------------------
            /// Greeting Header
            /// -------------------------
            Text(
              "Welcome back 👋",
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              "Here is a quick overview of your activity.",
              style: theme.textTheme.bodySmall?.copyWith(
                color: colors.onSurface.withValues(alpha: 0.7),
              ),
            ),

            const SizedBox(height: 24),

            /// -------------------------
            /// Info Card
            /// -------------------------
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: colors.outline.withValues(alpha: 0.2),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daily Tip",
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: colors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Adding a plant or vase can make any furniture setup more lively and warm.",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colors.onSurface.withValues(alpha: 0.85),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// -------------------------
            /// Quick Stats
            /// -------------------------
            Text(
              "Quick Stats",
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 14),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatItem(
                  context,
                  icon: Icons.favorite_border_rounded,
                  label: "Favorites",
                  value: "24",
                ),
                _buildStatItem(
                  context,
                  icon: Icons.shopping_bag_outlined,
                  label: "Orders",
                  value: "3",
                ),
                _buildStatItem(
                  context,
                  icon: Icons.notifications_none_rounded,
                  label: "Alerts",
                  value: "1",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Small helper widget for quick stats
  Widget _buildStatItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: colors.outline.withValues(alpha: 0.15)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: colors.primary),
          const SizedBox(height: 10),
          Text(
            value,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            label,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colors.onSurface.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
