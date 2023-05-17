import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/article_list_page.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/detail_page.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/article.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/article_webview.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: ArticleListPage.routeName,
      routes: {
        ArticleListPage.routeName: (context) => const ArticleListPage(),
        ArticleDetailPage.routeName: (context) => ArticleDetailPage(
            article: ModalRoute.of(context)?.settings.arguments as Article),
        ArticleWebView.routeName: (context) => ArticleWebView(
              url: ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}
