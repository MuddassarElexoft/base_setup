import 'package:flutter/material.dart';
import 'package:base_setup/core/theme/colors.dart';
import 'package:base_setup/core/utils/extensions.dart';

/*
 * @Author Muhammad Muddassar
 * @Date 16 June, 2025
*/

class RoundedButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const RoundedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,
    this.borderRadius = 12,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.95; // Scale down when pressed
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Scale back up when released
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () {
        setState(() {
          _scale = 1.0; // Reset scale if tap is cancelled
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: widget.isEnabled ? widget.onPressed : null,
            style: ElevatedButton.styleFrom(
              elevation: 0.00,
              shadowColor: Colors.transparent,
              disabledBackgroundColor: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: .5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  widget.borderRadius,
                ), // Rounded shape
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              backgroundColor:
                  widget.backgroundColor ??
                  Theme.of(context).colorScheme.primary,
            ),
            child: Text(
              widget.text,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedButtonSmall extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool isLoading;

  const RoundedButtonSmall({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,
    this.borderRadius = 12,
    this.backgroundColor,
    this.foregroundColor,
    this.isLoading = false,
  });

  @override
  State<RoundedButtonSmall> createState() => _RoundedButtonSmallState();
}

class _RoundedButtonSmallState extends State<RoundedButtonSmall> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.95; // Scale down when pressed
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Scale back up when released
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () {
        setState(() {
          _scale = 1.0; // Reset scale if tap is cancelled
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: widget.isEnabled ? widget.onPressed : null,
            style: ElevatedButton.styleFrom(
              elevation: 0.00,
              shadowColor: Colors.transparent,
              disabledBackgroundColor: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: .5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  widget.borderRadius,
                ), // Rounded shape
              ),
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
              backgroundColor:
                  widget.backgroundColor ??
                  Theme.of(context).colorScheme.primary,
            ),
            child: (widget.isLoading)
                ? SizedBox(
                    height: 20,
                    width: 20,
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        progressIndicatorTheme: Theme.of(
                          context,
                        ).progressIndicatorTheme.copyWith(color: Colors.white),
                      ),
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2.4,
                      ),
                    ),
                  )
                : Text(
                    widget.text,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class SecondaryButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isEnabled;

  const SecondaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isEnabled = true,
  });

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.95; // Scale down when pressed
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Scale back up when released
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () {
        setState(() {
          _scale = 1.0; // Reset scale if tap is cancelled
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: widget.isEnabled ? widget.onPressed : null,
            style: ElevatedButton.styleFrom(
              overlayColor: Theme.of(context).colorScheme.onSurfaceVariant,
              elevation: 0.00,
              shadowColor: Colors.transparent,
              disabledBackgroundColor: Theme.of(
                context,
              ).colorScheme.outline.withValues(alpha: .5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded shape
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 14.5,
                horizontal: 30,
              ),
              backgroundColor: Theme.of(context).colorScheme.outline,
            ),
            child: Text(
              widget.text,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.onSurfaceDark,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedButtonOutline extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? borderColor;
  final Color? textColor;
  final Widget? trailing;

  const RoundedButtonOutline({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderColor,
    this.textColor,
    this.trailing,
  });

  @override
  State<RoundedButtonOutline> createState() => _RoundedButtonOutlineState();
}

class _RoundedButtonOutlineState extends State<RoundedButtonOutline> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.95; // Scale down when pressed
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0; // Scale back up when released
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () {
        setState(() {
          _scale = 1.0; // Reset scale if tap is cancelled
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(
            onPressed: widget.onPressed,
            style: OutlinedButton.styleFrom(
              overlayColor: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: .15),
              shadowColor: Colors.transparent,
              side: BorderSide(
                color:
                    widget.borderColor ?? Theme.of(context).colorScheme.primary,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Rounded shape
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 14.5,
                horizontal: 30,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.text,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color:
                        widget.textColor ??
                        Theme.of(context).colorScheme.primary,
                  ),
                ),
                if (widget.trailing != null) ...[8.wd, widget.trailing!],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
