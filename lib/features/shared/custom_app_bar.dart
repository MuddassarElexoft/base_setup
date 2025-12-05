import 'package:flutter/material.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 25 Nov, 2025
*/

class CAppBar extends StatelessWidget {
  const CAppBar({
    super.key,
    required this.title,
    this.trailing,
    this.onClickLeading,
    this.bgColor,
  });

  final String title;
  final Widget? trailing;
  final Color? bgColor;
  final VoidCallback? onClickLeading;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor ?? Theme.of(context).colorScheme.surface,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            /// Leading Widget
            Align(
              alignment: Alignment.bottomLeft,
              child: InkWell(
                onTap: onClickLeading,
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onSurface,
                      width: .5,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ),

            /// Leading
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 48,
                child: Center(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),

            /// TRAILING
            if (trailing != null)
              Align(alignment: Alignment.bottomRight, child: trailing!),
          ],
        ),
      ),
    );
  }
}
