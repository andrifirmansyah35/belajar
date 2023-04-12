import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter material Image',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Imae Componen'),
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const <Widget>[
                Text('Ini dengan menggunakan font style default'),
                Text(
                  'Custom Font',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 30,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
