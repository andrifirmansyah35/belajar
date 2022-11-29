import 'package:flutter/material.dart';

class WisataBandungA extends StatelessWidget {
  const WisataBandungA({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const Scaffold(
        body: Center(
          child: Text('mantap'),
        ),
      ),
    );
  }
}

// class LatEvButton extends StatelessWidget {
//   const LatEvButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(onPressed: onPressed, child: child);
//   }
// }

// TextButton -------------------------------------------------------------
// TextButton(
//   child: const Text('Text Button'),
//   onPressed: () {
//     // Aksi ketika button diklik
//   },
// ),


// OutlinedButton----------------------------------------------------------
// OutlinedButton(
//   child: const Text('Outlined Button'),
//   onPressed: () {
//     // Aksi ketika button diklik
//   },
// ),

// IconButton -=-----------------------------------------------------------
// IconButton(
//   icon: const Icon(Icons.volume_up),
//   tooltip: 'Increase volume by 10',
//   onPressed: () {
//     // Aksi ketika button diklik
//   },
// ),

// DropDownButton --------------------------------------------------------
// class FirstScreen extends StatefulWidget {
//   const FirstScreen({Key? key}) : super(key: key);
 
//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }
 
// class _FirstScreenState extends State<FirstScreen> {
//   String? language;
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: DropdownButton<String>(
//         items: const <DropdownMenuItem<String>>[
//           DropdownMenuItem<String>(
//             value: 'Dart',
//             child: Text('Dart'),
//           ),
//           DropdownMenuItem<String>(
//             value: 'Kotlin',
//             child: Text('Kotlin'),
//           ),
//           DropdownMenuItem<String>(
//             value: 'Swift',
//             child: Text('Swift'),
//           ),
//         ],
//         value: language,
//         hint: const Text('Select Language'),
//         onChanged: (String? value) {
//           setState(() {
//             language = value;
//           });
//         },
//       ),
//     );
//   }
// }