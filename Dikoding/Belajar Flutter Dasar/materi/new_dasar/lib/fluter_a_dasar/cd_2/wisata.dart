import 'package:flutter/material.dart';
import 'package:new_dasar/fluter_a_dasar/cd_2/detail_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata bandung 2',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}
