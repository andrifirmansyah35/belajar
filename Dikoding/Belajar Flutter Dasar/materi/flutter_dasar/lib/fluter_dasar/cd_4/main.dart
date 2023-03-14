import 'package:flutter/material.dart';
// import 'package:flutter_dasar/fluter_dasar/cd_4/detail_screen.dart';
// import 'package:flutter_dasar/fluter_dasar/cd_4/package/tourist_place.dart';
import 'package:flutter_dasar/fluter_dasar/cd_4/tourism_place_list.dart';
import 'package:flutter_dasar/fluter_dasar/cd_4/tourism_place_grid.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung 3',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Wisata Bandung. Size: ${MediaQuery.of(context).size.width}'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return const TourismPlaceGrid(gridCount: 4);
          } else {
            return const TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}
