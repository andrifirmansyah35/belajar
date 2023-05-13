import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //lat future
  Future<bool> myTypedFuture() async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.error('Terjadi kesalahan');
    // throw Exception('Error from Exception');
  }

  // function MyFuture1 ------------------------------------------------
  // void runMyFuture() {
  //   myTypedFuture().then((value) {
  //     // Run extra code here
  //   }, onError: (error) {
  //     debugPrint(error);
  //   });
  // }

  // function MyFuture2 -----------------------------------------------
  //  Jika Anda ingin menangani dan menangkap eror secara eksplisit dari Future, Anda juga dapat menggunakan fungsi khusus yang disebut catchError.
  // void runMyFuture() {
  //   //runMyFuture 1
  //   myTypedFuture().then((value) {
  //     // Run extra code here
  //   }).catchError((error) {
  //     // debugPrint(error);
  //     debugPrint(error);
  //   });
  // }

// function MyFuture3 --------------------------------------------------
  Future runMyFuture() async {
    // ignore: body_might_complete_normally_catch_error
    var bool = await myTypedFuture();
    return bool;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Pixel',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lat Future'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              runMyFuture();
            },
            child: const Text('ini Future'),
          ),
        ),
      ),
    );
  }
}
