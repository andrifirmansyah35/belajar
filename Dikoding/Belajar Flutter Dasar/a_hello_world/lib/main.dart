import 'package:flutter/material.dart';
import 'package:a_hello_world/detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove debug banner
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailScreen(), // Panggil FirstScreen di sini
    );
  }
}

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
                color: Colors.green,
              ),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        ),
        // body: const Center(                  // 2.2 Body Lama --------------------------------------------------------
        //   child: Text('Ini adalah body!'),
        // ),
        body: Container(
          decoration: BoxDecoration(
            // 2.3 mencoba menggunakan Container --------------------------------------------------------------------------
            border: Border.all(color: Colors.green, width: 3),
            borderRadius: BorderRadius.circular(
                10), //error jika digunakan karena menggunakan boxshaadow
            //3.1 menggunakan Decration -------------------------------------------------------------------------------
            color: Colors.red,
            // shape: BoxShape.circle,      //jangan gunakan ini kalau pakai borderradius
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              ),
            ],
          ),
          margin: const EdgeInsets.all(10),
          // width: 200,
          height: 100,
          // padding: const EdgeInsets.all(10),
          // color: Colors.blue, // 3.1 Warna ini tidak terpakai karena ada decoration ---------------------
          child: const Text(
            'Container',
            style: TextStyle(fontSize: 40),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ));
  }
}

class MenggunakanRow extends StatelessWidget {
  const MenggunakanRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coba Row"),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Icon(Icons.share),
            // Icon(Icons.thumb_up),
            Text("TOD"),
            Icon(Icons.thumb_down),
          ],
        ),
      ),
    );
  }
}

// Codelab 1 : Aplikasi tempat wisata ==================================================================================

