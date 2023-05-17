// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_api/article.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_api/api_service.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_api/card_article.dart';

// show data flutter -----

class ArticleListPage extends StatefulWidget {
  static const routeName = '/article_list';

  const ArticleListPage({Key? key}) : super(key: key);

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  late Future<ArticlesResult> _article;

  // Future<void> getArticle() async {
  //   _article = await ApiService().topHeadlines();
  // }

  @override
  void initState() {
    super.initState();
    _article = ApiService().topHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kontol App'),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
              //meng kontol diri dari ucapan yang tidak baik
              onPressed: () {
                _article = ApiService().topHeadlines();
                setState(
                  () {
                    // initState();
                  },
                );
              },
              child: const Text('Refresh')),
          FutureBuilder<ArticlesResult>(
            future: _article,
            builder: (context, AsyncSnapshot<ArticlesResult> snapshot) {
              var state = snapshot.connectionState;

              if (state != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
                // return const Center(child: Text('Kontol'));
              } else {
                // print(_article);
                if (snapshot.hasData) {
                  // print(snapshot.data?.articles);

                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data?.articles.length,
                    itemBuilder: (context, index) {
                      var article = snapshot.data?.articles[index];

                      return CardArticle(article: article!);
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Material(
                      child: Text(snapshot.error.toString()),
                    ),
                  );
                } else {
                  return const Material(child: Text('kontol'));
                }
              }
            },
          )
        ],
      ),
    );
  }
}
