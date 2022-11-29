import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello, world!'),
        ),
        body: Container(
          color: Colors.blue,
          child: const Text('Hi', style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}

// b Container Width height =====================================================

class ContainerWidtHeight extends StatelessWidget {
  const ContainerWidtHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello, world!'),
        ),
        body: Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          child: const Text('Hi', style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}

// c Container Padding Margin =============================================
class ContainerPaddingMargin extends StatelessWidget {
  const ContainerPaddingMargin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello, world!'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          color: Colors.blue,
          child: const Text('Hi', style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
