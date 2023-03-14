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
          child: Image.network(
            'https://picsum.photos/200/300',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
