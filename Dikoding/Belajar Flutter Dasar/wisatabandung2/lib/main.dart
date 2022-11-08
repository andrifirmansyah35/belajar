import 'package:flutter/material.dart';

// Codelab 2 ==========================================================================
// import 'package:wisatabandung2/codelab2/detail_screen.dart';

// Codelab 3 ===========================================================================
// import 'package:wisatabandung2/codelab3/main_screen.dart';

// Codelab 4 ==========================================================================
//ctt : code lab ini hanya sbelum menerapkan web
import 'package:wisatabandung2/codelab4/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
