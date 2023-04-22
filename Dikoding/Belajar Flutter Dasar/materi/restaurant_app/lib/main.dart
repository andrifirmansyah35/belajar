import 'package:flutter/material.dart';
import 'package:restaurant_app/detail_page.dart';
import 'package:restaurant_app/home_page.dart';
import 'package:restaurant_app/restaurant.dart';
import 'package:restaurant_app/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant App',
      theme: ThemeData(
        colorScheme: myColorSchemeLight,
        textTheme: myTextTheme,
      ),
      darkTheme: ThemeData(
        colorScheme: myColorSchemeDark,
        textTheme: myTextTheme,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        DetailPage.routeName: (context) => DetailPage(
              restaurant:
                  ModalRoute.of(context)?.settings.arguments as Restaurant,
            ),
      },
    );
  }
}
