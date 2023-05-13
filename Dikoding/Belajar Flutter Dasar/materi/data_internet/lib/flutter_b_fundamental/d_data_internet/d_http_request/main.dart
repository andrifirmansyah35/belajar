// CONTOH REQUEST KE INTERNET

// import 'package:http/http.dart' as http;

// Future<http.Response> fetchAlbum() {
//   return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
// }

// ----------------------------------------------------------------------------------------------
import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/d_http_request/ui/album_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AlbumPage(),
    );
  }
}
