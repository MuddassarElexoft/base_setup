import 'package:flutter/material.dart';

/*
 * Author @ {{author}}
 * Date @ {{date}}
*/


class {{name.pascalCase()}}Screen extends StatelessWidget {
  const {{name.pascalCase()}}Screen({super.key, this.parentRoute});

  final String? parentRoute;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: Text('{{name.pascalCase()}} Screen'),
      ),
    );
  }
}


