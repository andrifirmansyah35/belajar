import 'package:flutter/material.dart';
// import 'package:wisatabandung2/codelab1/detail_screen.dart';
// import 'package:wisatabandung2/lat_komponen/i_expanded.dart';

// /Lat Komponen ============================================
// import 'package:wisatabandung2/lat_komponen/fa_input_onchange.dart';
// import 'package:wisatabandung2/lat_komponen/fc_switch.dart';
// import 'package:wisatabandung2/lat_komponen/fd_radio.dart';
// import 'package:wisatabandung2/lat_komponen/ga_images_asset.dart';
// import 'package:wisatabandung2/lat_komponen/h_listview.dart';
// import 'package:wisatabandung2/lat_komponen/ha_list_dinamis.dart';
// import 'package:wisatabandung2/lat_komponen/hb_list_builder.dart';
// import 'package:wisatabandung2/lat_komponen/hc_listview_separator.dart';
// import 'package:wisatabandung2/lat_komponen/ia_expanded_flexible.dart';
// import 'package:wisatabandung2/lat_komponen/j_navigation.dart';
// import 'package:wisatabandung2/lat_komponen/ja_navigation_data.dart';
// import 'package:wisatabandung2/lat_komponen/ka_builder_query.dart';

// Run untuk lat componen ================================================
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Wisata Bandung',
//       theme: ThemeData(),
//       home: const HomePage(),
//     );
//   }
// }

// Codelab 1 ==========================================================================
// import 'package:wisatabandung2/codelab1/detail_screen.dart';

// Codelab 2 ==========================================================================
// import 'package:wisatabandung2/codelab2/detail_screen_lat.dart';

// Codelab 3 ===========================================================================
import 'package:wisatabandung2/codelab31/main_screen.dart';

// Codelab 4 ==========================================================================
//ctt : code lab ini hanya sbelum menerapkan web
// import 'package:wisatabandung2/codelab4/main_screen.dart';

// RUN untuk codelab ====================================================
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}
