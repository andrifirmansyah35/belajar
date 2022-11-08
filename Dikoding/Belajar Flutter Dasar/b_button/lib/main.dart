import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FiveScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This tr
    );
  }
}

// ==========================================================     Menggunakan  dropDown Menu =======================================================

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({Key? key}) : super(key: key);

//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   String? language;
//   String? terpilih;

//   changeLanguage(String? value) {
//     setState(() {
//       language = value;
//       cek();
//     });
//   }

//   cek() {
//     if (language == null) {
//       terpilih = 'kosong';
//     } else {
//       terpilih = '$language';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('First Screen'),
//         ),
//         body: Column(
//           children: <Widget>[
//             const Text(''),
//             DropdownButton<String>(
//               items: const <DropdownMenuItem<String>>[
//                 DropdownMenuItem<String>(
//                   value: 'Dart',
//                   child: Text('Dart'),
//                 ),
//                 DropdownMenuItem<String>(
//                   value: 'Kotlin',
//                   child: Text('Kotlin'),
//                 ),
//                 DropdownMenuItem<String>(
//                   value: 'Swift',
//                   child: Text('Swift'),
//                 ),
//               ],
//               value: language,
//               hint: const Text('Select Language'),
//               onChanged: changeLanguage,
//             ),
//           ],
//         ));
//   }
// }

// input Widget : Latihan Widget text fied (onChange) =============================================================================

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Write Your name Here ...',
                labelText: 'Your name',
              ),
              onSubmitted: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('ini tombol Submit joh'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, $_name'),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

// input Widget : Latihan Widget text fied (Controller) =============================================================================
// class _SecondScreenState extends State<SecondScreen> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//               decoration: const InputDecoration(
//                 hintText: 'Write your name here...',
//                 labelText: 'Your Name',
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               child: const Text('Submit'),
//               onPressed: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog(
//                         content: Text('Hello, ${_controller.text}'),
//                       );
//                     });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }

// // dibawah digunakan untuk menghapus  controller
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

// Input widget : Switch ==============================================================================================
class ThreeScreen extends StatefulWidget {
  const ThreeScreen({Key? key}) : super(key: key);

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light Off'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
            Text("nilai Tombol : $lightOn")
          ],
        ));
  }
}

// Input widget : RadioButton ==============================================================================================

class FourScreen extends StatefulWidget {
  const FourScreen({Key? key}) : super(key: key);

  @override
  State<FourScreen> createState() => _FourScreenState();
}

class _FourScreenState extends State<FourScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Four Screen'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text('Dart'),
            leading: Radio<String>(
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Kotlin'),
            leading: Radio<String>(
              value: 'Kotlin',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Swift'),
            leading: Radio<String>(
              value: 'Swift',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

// Input Widget : CheckBox ==================================================================================

class FiveScreen extends StatefulWidget {
  const FiveScreen({Key? key}) : super(key: key);

  @override
  State<FiveScreen> createState() => _FiveScreenState();
}

class _FiveScreenState extends State<FiveScreen> {
  bool? agree;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Five screen'),
      ),
      body: ListTile(
        title: const Text('Agree/Disagree'),
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value) {
            setState(() {
              agree = value!;
            });
          },
        ),
      ),
    );
  }
}
