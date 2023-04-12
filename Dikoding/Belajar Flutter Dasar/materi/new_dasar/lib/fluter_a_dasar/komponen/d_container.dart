import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(child: FirstScreen()),
      ),
    );
  }
}

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//         actions: [
//           IconButton(
//             icon: const Icon(
//               Icons.search,
//               color: Colors.white,
//             ),
//             onPressed: () {},
//           ),
//         ],
//         leading: IconButton(
//           icon: const Icon(
//             Icons.menu,
//             color: Colors.white,
//           ),
//           onPressed: () {},
//         ),
//       ),
//       body: Container(
//         color: Colors.blue,
//         width: 200,
//         height: 100,
//         child: const Text(
//           'Hi',
//           style: TextStyle(fontSize: 40),
//         ),
//       ),
//     );
//   }
// }

// Width height ------------------------------------------
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Colors.blue,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Hi',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
