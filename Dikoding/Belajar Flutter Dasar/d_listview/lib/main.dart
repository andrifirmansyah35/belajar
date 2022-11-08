import 'package:flutter/material.dart';

// MaterilIstView =======================================================================
// import 'package:d_listview/a_scrollview.dart';
// import 'package:d_listview/b_item_dinamis.dart';
// import 'package:d_listview/c_list_builder.dart';
// import 'package:d_listview/d_list_separator.dart';

// Expanded and Flexibel =================================================================
// import 'package:d_listview/expanden_and_flexible/expanded.dart';
// import 'package:d_listview/b_expanden_and_flexible/flexible.dart';

// Navigation =========================================================================
// import 'package:d_listview/c_navigation/b_lat/first_screen.dart';
import 'package:d_listview/c_navigation/c_send_message/first_screen.dart';

// Responsive Layout ====================================================================
// import 'package:d_listview/d_responsive/a_media_query/a_home_page.dart';
// import 'package:d_listview/d_responsive/b_layout_builder/a_home_page.dart';
// import 'package:d_listview/d_responsive/c_responsive_page/responsive_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}
