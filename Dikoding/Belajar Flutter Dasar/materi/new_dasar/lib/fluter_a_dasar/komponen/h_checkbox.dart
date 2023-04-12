// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Gatau',
//       theme: ThemeData(primaryColor: Colors.blue),
//       home: const FirstScreen(),
//     );
//   }
// }

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _FirstScreenState createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   bool agree = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Input Firstscreen'),
//       ),
//       body: ListTile(
//         leading: Checkbox(
//           value: agree,
//           onChanged: (bool? value) {
//             setState(() {
//               agree = value!;
//             });
//           },
//         ),
//         title: Text('Agree / Disagree'),
//       ),
//     );
//   }
// }
