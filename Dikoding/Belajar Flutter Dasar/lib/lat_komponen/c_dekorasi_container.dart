import 'package:flutter/material.dart';

// Menggunakan Coloir, shadow, shape, shadow, Border

class ContainerColor extends StatelessWidget {
  const ContainerColor({super.key});

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
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: const Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

// b Shape ================================================

class ContainerShape extends StatelessWidget {
  const ContainerShape({super.key});

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
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: const Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

// c Shadow =======================================================
class ContainerShadow extends StatelessWidget {
  const ContainerShadow({super.key});

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
          decoration: const BoxDecoration(
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              ),
            ],
          ),
          child: const Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

// d Border ============================================

class ContainerBorder extends StatelessWidget {
  const ContainerBorder({super.key});

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
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.green, width: 3),
          ),
          child: const Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class ContainerBorderCircular extends StatelessWidget {
  const ContainerBorderCircular({super.key});

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
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
