import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
 * @Author Muhammad Muddassar
 * @Date 16 June, 2025
*/

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    this.isActive = false,
    required this.svgIcon,
    required this.label,
    this.onPress,
  });

  final bool isActive;
  final String svgIcon;
  final String label;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: Theme.of(
            context,
          ).colorScheme.primary.withValues(alpha: .05),
          splashColor: Theme.of(
            context,
          ).colorScheme.primary.withValues(alpha: .05),
          onTap: onPress,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 6,
            children: [
              /// Icon
              SvgPicture.asset(
                svgIcon,
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  isActive
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.tertiary,
                  BlendMode.srcIn,
                ),
              ),

              /// Label
              Text(
                label,
                textScaler: TextScaler.noScaling,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontSize: 13,
                  color: isActive
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
