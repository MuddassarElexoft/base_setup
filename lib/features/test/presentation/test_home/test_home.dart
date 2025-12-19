import 'package:flutter/material.dart';

/*
 * Author @ Muhammad Muddassar
 * Date @ 01 Dec, 2025
*/


class TestHomeScreen extends StatelessWidget {
  const TestHomeScreen({super.key, this.parentRoute});

  final String? parentRoute;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: Text('TestHome Screen'),
      ),
    );
  }
}


