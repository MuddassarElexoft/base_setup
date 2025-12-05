import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:base_setup/core/constants/constants.dart';
import 'package:base_setup/core/theme/colors.dart';
import 'package:base_setup/core/utils/extensions.dart';
import 'package:base_setup/features/shared/rounded_button.dart';
import 'package:base_setup/features/shared/rounded_text_field.dart';
import 'package:go_router/go_router.dart';

/*
 * @Author Muhammad Muddassar
 * @Date 24 Nov, 2025
*/

class UiHelper {
  /// Global navigator state
  static final shellRebuildNotifier = ValueNotifier<int>(0);
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> dashboardNavigatorKey =
      GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> ticketNavigatorKey =
      GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> saveNavigatorKey =
      GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> accountNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<StatefulNavigationShellState> shellKey =
      GlobalKey<StatefulNavigationShellState>();

  /// Get current build context
  static BuildContext? get context => navigatorKey.currentState?.context;

  /// Get current brightness
  static bool get isDark => context == null
      ? false
      : Theme.of(context!).brightness == Brightness.dark;

  /// Method to reset all navigation state
  static void resetNavigationState() {
    // Clear all navigator stacks
    _clearNavigatorStack(ticketNavigatorKey);
    _clearNavigatorStack(saveNavigatorKey);
    _clearNavigatorStack(accountNavigatorKey);
  }

  static void _clearNavigatorStack(GlobalKey<NavigatorState> navigatorKey) {
    final navigator = navigatorKey.currentState;
    if (navigator != null) {
      // Pop all routes except the first one
      while (navigator.canPop()) {
        navigator.pop();
      }
    }
  }

  /// FULL SCREEN LOADING DIALOGUE
  static startLoading({bool canPop = false}) {
    if (context == null) return;

    showDialog(
      context: context!,
      useSafeArea: false,
      barrierDismissible: false, // Prevents dismissal when tapping outside
      builder: (BuildContext context) {
        return PopScope(
          canPop: canPop,
          onPopInvokedWithResult: (val, _) => false,
          child: Center(
            child:
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 44,
                    vertical: 24,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        progressIndicatorTheme: ProgressIndicatorThemeData(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface, // ← your custom color here
                        ),
                      ),
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 2.5,
                      ),
                    ),
                  ),
                ).animate().scale(
                  begin: const Offset(.85, .85),
                  end: const Offset(1, 1),
                  curve: Curves.linearToEaseOut,
                  duration: const Duration(milliseconds: 300),
                ),
          ),
        );
      },
    );
  }

  /// FULL SCREEN LOADING DIALOGUE WITH INFO
  static startLoadingWithText({bool canPop = false, String text = ""}) {
    if (context == null) return;

    showDialog(
      context: context!,
      useSafeArea: false,
      barrierDismissible: false, // Prevents dismissal when tapping outside
      builder: (BuildContext context) {
        return PopScope(
          canPop: canPop,
          onPopInvokedWithResult: (val, _) => false,
          child: Center(
            child:
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        text,
                        textScaler: TextScaler.noScaling,
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                      12.wd,
                      const SizedBox(
                        width: 12,
                        height: 12,
                        child: CircularProgressIndicator.adaptive(
                          strokeWidth: 1.5,
                        ),
                      ),
                    ],
                  ),
                ).animate().scale(
                  begin: const Offset(.85, .85),
                  end: const Offset(1, 1),
                  curve: Curves.linearToEaseOut,
                  duration: const Duration(milliseconds: 300),
                ),
          ),
        );
      },
    );
  }

  /// Stop loading dialog
  static Future<void> stopLoading() async {
    await Future.delayed(const Duration(milliseconds: 400));
    var context = navigatorKey.currentState?.overlay?.context;
    if (context != null) {
      if (context.mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  /// FULL SCREEN DIALOGUE
  static Future<void> showDialogue({
    String title = "Title",
    String? message = "Title",
    String doneBtnText = "Ok",
    VoidCallback? onDone,
    VoidCallback? onCancel,
  }) async {
    if (context == null) return;

    await showDialog(
      context: context!,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: Theme.of(context).colorScheme.surface,
          backgroundColor: Theme.of(context).colorScheme.surface,
          title: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          content: SelectionArea(
            child: Text(
              message ?? "Something went wrong!",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          titlePadding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 4,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          actionsPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          actions: [
            RoundedButtonSmall(
              text: doneBtnText,
              onPressed: () {
                Navigator.pop(context);
                onDone?.call();
              },
            ),
          ],
        ).animate().scale(
          begin: const Offset(.85, .85),
          end: const Offset(1, 1),
          curve: Curves.linearToEaseOut,
          duration: const Duration(milliseconds: 300),
        );
      },
    );
  }

  /// FULL SCREEN DIALOGUE
  static showInputDialogue({
    String? title,
    String? message,
    String? hintText = "Title",
    String? doneText = "Done",
    bool obscureText = false,
    Function(String)? onChange,
    Function(String)? onDone,
    VoidCallback? onCancel,
  }) {
    if (context == null) return;
    TextEditingController controller = TextEditingController();
    showDialog(
      context: context!,
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: .5),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              surfaceTintColor: Theme.of(context).colorScheme.surface,
              backgroundColor: Theme.of(context).colorScheme.surface,
              title: title != null
                  ? Text(
                      title,
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            fontWeight: FontWeight.w500,
                            fontFamily: kFontFamily,
                            fontSize: 18,
                          ),
                    )
                  : null,
              content: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// LABEL
                    if (message != null) ...[
                      12.ht,
                      Text(
                        message,
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(
                              fontWeight: FontWeight.w400,
                              fontFamily: kFontFamily,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                      8.ht,
                    ],

                    /// INPUT FIELD
                    RoundedTextField(
                      hintText: hintText ?? "",
                      controller: controller,
                      obscureText: obscureText,
                      bgColor: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: .05),
                      borderRadius: 8,
                      onChange: (val) {
                        onChange?.call(val);
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              titlePadding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: 4,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              actionsPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              actions: [
                RoundedButtonSmall(
                  text: doneText ?? "Done",
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  onPressed: controller.text.isNotEmpty
                      ? () {
                          Navigator.pop(context);
                          onDone?.call(controller.text);
                        }
                      : null,
                ),
              ],
            ).animate().scale(
              begin: const Offset(.85, .85),
              end: const Offset(1, 1),
              curve: Curves.linearToEaseOut,
              duration: const Duration(milliseconds: 300),
            );
          },
        );
      },
    );
  }

  /// POP SCREEN WITH PARAM
  static popScreenWithoutParam() {
    if (navigatorKey.currentState?.overlay?.context != null) {
      Navigator.of(navigatorKey.currentState!.overlay!.context).pop();
    }
  }

  /// RESTART SESSION
  static restartApp() {
    // splashNav();
  }

  /// POP SCREEN WITH PARAM
  static popScreenWithParam(dynamic param) {
    if (navigatorKey.currentState?.overlay?.context != null) {
      Navigator.of(navigatorKey.currentState!.overlay!.context).pop(param);
    }
  }

  static resetStatusBarColor() {
    /// Set the status bar color and icon brightness based on the theme
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // Make status bar transparent
        systemNavigationBarColor: AppColors.surface,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness:
            Brightness.dark, // Set icon brightness based on theme
      ),
    );
  }
}
