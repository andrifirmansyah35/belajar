import 'package:flutter/material.dart';

// impor Lat Component =========================================================
// import 'package:flutter_dasar/lat_komponen/a_helloworld.dart';
// import 'package:flutter_dasar/lat_komponen/b_container.dart';
// import 'package:flutter_dasar/lat_komponen/c_dekorasi_container.dart';
// import 'package:flutter_dasar/lat_komponen/d_row_column.dart';
// import 'package:flutter_dasar/lat_komponen/fa_input_onchange.dart';
// import 'package:flutter_dasar/lat_komponen/fb_input_controller.dart';
import 'package:flutter_dasar/lat_komponen/fc_switch.dart';

// imporet Codelab =============================================================
// import 'package:flutter_dasar/codelab1/wisata_bandung.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstScreen();
  }
}
