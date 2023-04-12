import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter material Image',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Listview Dinamis'),
        ),
        body: ListView(
          children: <Widget>[
            ...numberList.map(
              ((number) {
                return Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      '$number',
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
