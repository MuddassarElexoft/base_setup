import 'package:base_setup/core/utils/extensions.dart';
import 'package:base_setup/core/utils/ui_helper.dart';
import 'package:flutter/material.dart';

/*
 * @Author Muhammad Muddassar
 * @Date 16 June, 2025
*/

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.focusNode,
    this.onClickTrailing,
    this.obscureText = false,
    this.isDisabled = false,
    this.iconData,
    this.leading,
    this.textInputType,
    this.onChange,
    this.borderRadius,
    this.textCapitalization,
    this.label,
    this.suffixText,
    this.suffix,
    this.bgColor,
    this.isReq = false,
  });

  final String hintText;
  final double? borderRadius;
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback? onClickTrailing;
  final Function(String)? onChange;
  final IconData? iconData;
  final FocusNode? focusNode;
  final String? label;
  final String? suffixText;
  final Widget? suffix;
  final Widget? leading;
  final TextInputType? textInputType;
  final bool isDisabled;
  final TextCapitalization? textCapitalization;
  final Color? bgColor;
  final bool isReq;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Label
        if (label != null) ...[
          Row(
            children: [
              Text(
                label!,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              if (isReq)
                Text(
                  " *",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ),
            ],
          ),
          8.ht,
        ],

        TextField(
          focusNode: focusNode,
          controller: controller,
          obscureText: obscureText,
          cursorColor: Theme.of(context).colorScheme.onSurface,
          cursorWidth: 2.0,
          keyboardType: textInputType,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          onChanged: onChange,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            fontSize: 15,
            color: isDisabled
                ? Theme.of(context).colorScheme.onSurface.withValues(alpha: .5)
                : Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.w400,
          ),
          obscuringCharacter: '•',
          decoration: InputDecoration(
            enabled: !isDisabled,
            suffixText: suffixText,

            suffix: suffix,
            suffixIcon: iconData != null
                ? SizedBox(
                    height: 16,
                    width: 16,
                    child: InkWell(
                      onTap: onClickTrailing,
                      child: Icon(
                        iconData,
                        color: Theme.of(context).colorScheme.tertiary,
                        size: 16,
                      ),
                    ),
                  )
                : null,
            prefix: leading,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 16,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
              // Rounded border
              borderSide: BorderSide.none, // Removes default border
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
              // Rounded border
              borderSide: BorderSide.none, // Removes default border
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
              // Rounded border
              borderSide: BorderSide.none, // Removes default border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 12.0),
              // Rounded border
              borderSide: BorderSide.none, // Removes default border
            ),
            filled: true,
            fillColor:
                bgColor ??
                Theme.of(
                  context,
                ).colorScheme.secondaryContainer, // Background color
          ),
        ),
      ],
    );
  }
}

class AmountInputField extends StatefulWidget {
  const AmountInputField({
    super.key,
    required this.controller,
    required this.currency,
    required this.onCurrencyTap,
    this.hintText = "Amount",
    this.label,
    this.borderRadius,
    this.isDisabled = false,
    this.autoFocus = false,
    this.onChange,
    this.isReq = false,
    this.bg,
  });

  final TextEditingController controller;
  final String currency;
  final VoidCallback onCurrencyTap;
  final String? label;
  final String hintText;
  final double? borderRadius;
  final bool isDisabled;
  final bool autoFocus;
  final Function(String)? onChange;
  final bool isReq;
  final Color? bg;

  @override
  State<AmountInputField> createState() => _AmountInputFieldState();
}

class _AmountInputFieldState extends State<AmountInputField> {
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    if (widget.autoFocus) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /// Label
        if (widget.label != null) ...[
          Row(
            children: [
              Flexible(
                child: Text(
                  widget.label!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              if (widget.isReq)
                Text(
                  " *",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ),
            ],
          ),
          8.ht,
        ],

        Opacity(
          opacity: widget.isDisabled ? .85 : 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
              ),
              child: Row(
                children: [
                  /// Currency selector box
                  InkWell(
                    onTap: widget.onCurrencyTap,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: UiHelper.isDark ? .065 : .025,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            widget.currency,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Expanded text field for amount input
                  Expanded(
                    child: TextField(
                      focusNode: focusNode,
                      controller: widget.controller,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      enabled: !widget.isDisabled,
                      onChanged: widget.onChange,
                      cursorColor: theme.colorScheme.onSurface,

                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontSize: 15,
                        color: widget.isDisabled
                            ? theme.colorScheme.onSurface
                            : theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        hintStyle: Theme.of(context).textTheme.labelLarge
                            ?.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 15,
                        ),
                        errorBorder: OutlineInputBorder(
                          // Rounded border
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none, // Removes default border
                        ),
                        enabledBorder: OutlineInputBorder(
                          // Rounded border
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none, // Removes default border
                        ),
                        disabledBorder: OutlineInputBorder(
                          // Rounded border
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none, // Removes default border
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.zero,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none, // Removes default border
                        ),
                        border: OutlineInputBorder(
                          // Rounded border
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none, // Removes default border
                        ),
                        filled: true,
                        fillColor:
                            widget.bg ??
                            Theme.of(context)
                                .colorScheme
                                .secondaryContainer, // Background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AmountInputFieldTrailing extends StatefulWidget {
  const AmountInputFieldTrailing({
    super.key,
    required this.controller,
    required this.suffix,
    required this.onCurrencyTap,
    this.hintText = "Amount",
    this.label,
    this.borderRadius,
    this.isDisabled = false,
    this.autoFocus = false,
    this.isReq = false,
    this.onChange,
    this.bgColor,
  });

  final TextEditingController controller;
  final String suffix;
  final VoidCallback onCurrencyTap;
  final String? label;
  final String hintText;
  final double? borderRadius;
  final Color? bgColor;
  final bool isDisabled;
  final bool autoFocus;
  final bool isReq;
  final Function(String)? onChange;

  @override
  State<AmountInputFieldTrailing> createState() =>
      _AmountInputFieldTrailingState();
}

class _AmountInputFieldTrailingState extends State<AmountInputFieldTrailing> {
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    if (widget.autoFocus) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /// Label
        if (widget.label != null) ...[
          Row(
            children: [
              Text(
                widget.label!,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              if (widget.isReq)
                Text(
                  " *",
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ),
            ],
          ),
        ],

        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer,
            ),
            child: Row(
              children: [
                /// Expanded text field for amount input
                Expanded(
                  child: TextField(
                    focusNode: focusNode,
                    controller: widget.controller,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    enabled: !widget.isDisabled,
                    onChanged: widget.onChange,
                    cursorColor: theme.colorScheme.onSurface,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontSize: 15,
                      color: widget.isDisabled
                          ? theme.disabledColor
                          : theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: Theme.of(context).textTheme.labelLarge
                          ?.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 15,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        // Rounded border
                        borderSide: BorderSide.none, // Removes default border
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        // Rounded border
                        borderSide: BorderSide.none, // Removes default border
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        // Rounded border
                        borderSide: BorderSide.none, // Removes default border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide.none,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        // Rounded border
                        borderSide: BorderSide.none, // Removes default border
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        // Rounded border
                        borderSide: BorderSide.none, // Removes default border
                      ),
                      filled: true,
                      fillColor:
                          widget.bgColor ??
                          Theme.of(
                            context,
                          ).colorScheme.secondaryContainer, // Background color
                    ),
                  ),
                ),

                /// Currency selector box
                if (widget.suffix.isNotEmpty)
                  InkWell(
                    onTap: widget.onCurrencyTap,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: UiHelper.isDark ? .065 : .025,
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            widget.suffix,
                            style: theme.textTheme.labelLarge?.copyWith(
                              color: theme.colorScheme.onSurface,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
