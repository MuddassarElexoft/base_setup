import 'package:flutter/material.dart';

/*
 * @Author Muhammad Muddassar
 * @Date 05 Dec, 2025
*/

List<BoxShadow> dropShadow500 = [
  BoxShadow(
    offset: const Offset(0, 16),
    blurRadius: 16,
    spreadRadius: -8,
    color: const Color(0xff0C0C0D).withValues(alpha: .10),
  ),
  BoxShadow(
    offset: const Offset(0, 4),
    blurRadius: 4,
    spreadRadius: -4,
    color: const Color(0xff0C0C0D).withValues(alpha: .05),
  ),
];

List<BoxShadow> dropShadow100 = [
  BoxShadow(
    offset: const Offset(0, 3),
    blurRadius: 3,
    spreadRadius: 0,
    color: const Color(0xff0C0C0D).withValues(alpha: .10),
  ),
];

List<BoxShadow> dropShadow200 = [
  BoxShadow(
    offset: const Offset(0, 1),
    blurRadius: 6,
    spreadRadius: 0,
    color: const Color(0xff0C0C0D).withValues(alpha: .15),
  ),
];

List<BoxShadow> dropShadow300 = [
  BoxShadow(
    offset: const Offset(0, 4),
    blurRadius: 13,
    spreadRadius: 0,
    color: const Color(0xff0C0C0D).withValues(alpha: .1),
  ),
];

List<BoxShadow> searchBarShadow = [
  BoxShadow(
    offset: const Offset(0, 17),
    blurRadius: 50,
    spreadRadius: 0,
    color: const Color(0xFF868686).withValues(alpha: .1),
  ),
];

List<BoxShadow> bottomBarDropShadow = [
  BoxShadow(
    offset: const Offset(0, -24),
    blurRadius: 50,
    spreadRadius: 0,
    color: const Color(0xff868686).withValues(alpha: .1),
  ),
];

List<BoxShadow> dropShadow50 = [
  BoxShadow(
    offset: const Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 0,
    color: Colors.black.withValues(alpha: .25),
  ),
];

AnimationStyle bottomSheetAnimationStyle = AnimationStyle(
  duration: const Duration(milliseconds: 500),
  reverseDuration: const Duration(seconds: 500),
  curve: Curves.linearToEaseOut,
);

InputDecoration noDecoration = const InputDecoration(
  border: OutlineInputBorder(borderSide: BorderSide.none),
  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
  disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
  errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
  focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide.none),
  filled: false,
);
