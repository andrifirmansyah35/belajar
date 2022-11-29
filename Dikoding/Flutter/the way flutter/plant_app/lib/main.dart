import 'package:flutter/material.dart';
import 'package:plant_app/constraints.dart';

import 'package:plant_app/components/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: ,
          scaffoldBackgroundColor: kBacgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)
          // visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
      home: const HomeScreen(),
    );
  }
}
