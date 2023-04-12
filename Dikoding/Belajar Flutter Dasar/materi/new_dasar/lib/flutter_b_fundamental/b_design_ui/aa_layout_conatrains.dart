// ignore: file_names
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI - Layout Constraint',
      theme: ThemeData(),
      home: const LatLayoutConstraint(),
    );
  }
}

class LatLayoutConstraint extends StatelessWidget {
  const LatLayoutConstraint({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 30,
          minHeight: 70,
          maxWidth: 100,
          maxHeight: 150,
        ),
        child: Container(
          color: Colors.yellow,
        ),
      ),
    );
  }
}
