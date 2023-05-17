// ignore_for_file: avoid_print, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/new_provider.dart';
import 'package:flutter/material.dart';
// import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/article.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/api_service.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/card_article.dart';
import 'package:provider/provider.dart';

// show data flutter -----

class ArticleListPage extends StatefulWidget {
  static const routeName = '/article_list';

  const ArticleListPage({Key? key}) : super(key: key);

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  // late Future<ArticlesResult> _article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New App Provider API'),
      ),
      body: _buildListProvider(context),
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _article = ApiService().topHeadlines();
  // }

  Widget _buildListProvider(BuildContext context) {
    return ChangeNotifierProvider<NewsProvider>(
        create: (context) => NewsProvider(apiService: ApiService()),
        child: _buildList(context));
  }

  Widget _buildList(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, State, Widget) {
        if (State.state == ResultState.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (State.state == ResultState.hasData) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: State.result.articles.length,
            itemBuilder: (context, index) {
              var article = State.result.articles[index];
              return CardArticle(article: article);
            },
          );
        } else if (State.state == ResultState.noData) {
          return Center(
            child: Material(
              child: Text(State.message),
            ),
          );
        } else if (State.state == ResultState.error) {
          return Center(
            child: Material(
              child: Text(State.message),
            ),
          );
        } else {
          return const Center(
              child: Material(
            child: Text(''),
          ));
        }
      },
    );
  }
}
