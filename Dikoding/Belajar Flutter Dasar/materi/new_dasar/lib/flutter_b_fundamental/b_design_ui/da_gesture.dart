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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('gesture Detector'),
      ),
      body: Center(
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
          child: Container(
            decoration: const BoxDecoration(color: Colors.red),
            width: boxSize,
            height: boxSize,
          ),
        ),
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
