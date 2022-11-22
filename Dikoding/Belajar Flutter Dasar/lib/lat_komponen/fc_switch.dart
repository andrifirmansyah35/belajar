import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooba Switch',
      theme: ThemeData(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('First Screen'),
          ),
          body: Column(
            children: <Widget>[
              Switch(
                value: lightOn,
                onChanged: (bool value) {
                  setState(() {
                    lightOn = value;
                  });
                },
              ),
              Text('Lampu :  ${(lightOn ? 'nyala' : 'mati')}')
            ],
          )),
    );
  }
}
