// ignore: file_names
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        color: Colors.red,
        width: 1000,
        height: 100,
      ),
    );
  }
}
