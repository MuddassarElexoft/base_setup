import 'dart:convert' show utf8;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show NumberFormat;

/*
 * @Author Muhammad Muddassar
 * @Date 24 Nov, 2025
*/

extension SizeBoxExtension on num {
  // Extension for width
  Widget get wd => SizedBox(width: toDouble());

  // Extension for height
  Widget get ht => SizedBox(height: toDouble());
}

extension FormattedNumber on double {
  String get format => NumberFormat('#,##0.00', 'en_US').format(this);
}

extension IntORNull on String {
  int? get toIntOrNull {
    try {
      return int.parse(this);
    } catch (_) {
      return null;
    }
  }
}

extension DoubleORNull on String {
  double? get toDoubleOrNull {
    try {
      return double.parse(this);
    } catch (_) {
      return null;
    }
  }
}

extension StringExtensions on String {
  /// Converts the string to Send Word Case (Title Case):
  /// Capitalizes the first letter of each word, rest lowercase.
  String toSendWordCase() {
    if (isEmpty) return this;
    return split(' ')
        .map(
          (word) => word.isEmpty
              ? word
              : word[0].toUpperCase() + word.substring(1).toLowerCase(),
        )
        .join(' ');
  }
}

extension DoubleORNullOnNullableString on String? {
  double? get toDoubleOrNull {
    try {
      if (this != null) {
        return double.parse(this!);
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }
}

extension LoadingAnimationControllerX on AnimationController {
  T eval<T>(Tween<T> tween, {Curve curve = Curves.linear}) =>
      tween.transform(curve.transform(value));

  double evalDouble({
    double from = 0,
    double to = 1,
    double begin = 0,
    double end = 1,
    Curve curve = Curves.linear,
  }) {
    return eval(
      Tween<double>(begin: from, end: to),
      curve: Interval(begin, end, curve: curve),
    );
  }
}

extension AbbreviatedNumber on num {
  String toAbbreviated() {
    final suffixes = ['', 'k', 'M', 'B', 'T'];
    double value = toDouble();
    int i = 0;

    while (value >= 1000 && i < suffixes.length - 1) {
      value /= 1000;
      i++;
    }

    // Truncate to 2 decimal places (e.g., 1.759 -> 1.75, not 1.76)
    double truncated = (value * 100).truncateToDouble() / 100;

    String formatted = (truncated % 1 == 0)
        ? truncated.toInt().toString()
        : truncated.toStringAsFixed(2);

    return '$formatted${suffixes[i]}';
  }

  String toPriceFormat() {
    final intValue = toInt(); // Remove decimal part
    final isNegative = intValue < 0;
    final str = intValue.abs().toString(); // Use absolute value
    final buffer = StringBuffer();

    int count = 0;
    for (int i = str.length - 1; i >= 0; i--) {
      buffer.write(str[i]);
      count++;
      if (count % 3 == 0 && i != 0) {
        buffer.write(',');
      }
    }

    final formatted = buffer.toString().split('').reversed.join();
    return isNegative ? '-$formatted' : formatted;
  }
}

extension ReadableEnumFormat on String {
  String toReadableFormat() {
    if (isEmpty) return "";
    return toLowerCase()
        .split('_')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  String fixEncoding() {
    // The mojibake often comes from UTF-8 misread as Latin-1
    return utf8.decode(runes.toList(), allowMalformed: true);
  }
}
