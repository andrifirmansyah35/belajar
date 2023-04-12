// ignore_for_file: unnecessary_this, avoid_print

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture Detector',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double boxSize = 150.0;
  int numTaps = 0;
  int doubleTaps = 0;
  int longPress = 0;

  // Position
  double posX = 0.0;
  double posY = 0.0;

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (posX == 0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('gesture Detector'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: posY,
            left: posX,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  numTaps++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  doubleTaps++;
                });
              },
              onLongPress: () {
                setState(() {
                  longPress++;
                });
              },
              // onVerticalDragUpdate: (DragUpdateDetails details) {
              //   //penggeseran secara vertikal--------------------------------------
              //   // print(details);
              //   setState(() {
              //     // ignore: unused_local_variable
              //     double delta = details.delta.dy;
              //     posY += delta;
              //   });
              // },
              //   onHorizontalDragUpdate: (DragUpdateDetails details) {
              //     //penggeseran secara horizontal--------------------------------------
              //     // print(details);
              //     setState(() {
              //       // ignore: unused_local_variable
              //       double delta = details.delta.dx;
              //       posX += delta;
              //     });
              //   },
              //   child: Container(
              //     decoration: const BoxDecoration(color: Colors.red),
              //     width: boxSize,
              //     height: boxSize,
              //   ),
              // ),
              onPanUpdate: (DragUpdateDetails details) {
                //penggeseran secara horizontal--------------------------------------
                // print(details);
                setState(() {
                  // ignore: unused_local_variable
                  double deltaX = details.delta.dx;
                  double deltaY = details.delta.dy;
                  posX += deltaX;
                  posY += deltaY;
                });
              },
              child: Container(
                decoration: const BoxDecoration(color: Colors.red),
                width: boxSize,
                height: boxSize,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Taps : $numTaps,Double Taps: $doubleTaps,Long Press: $longPress',
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
