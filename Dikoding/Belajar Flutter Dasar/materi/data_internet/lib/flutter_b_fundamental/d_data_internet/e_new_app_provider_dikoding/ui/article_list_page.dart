// import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/data/api/api_service.dart';
// import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/data/model/article.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/widgets/card_article.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/widgets/platform_widget.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/news_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArticleListPage extends StatefulWidget {
  const ArticleListPage({Key? key}) : super(key: key);

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  // late Future<ArticlesResult> _article; kita tidak membutuhkan ini karena kita akan menggunakan provider

  // @override
  // void initState() {
  //   super.initState();
  //   _article = ApiService().topHeadlines();
  // }

  Widget _buildList(BuildContext context) {
    return Consumer<NewsProvider>(
      builder: (context, state, _) {
        if (state.state == ResultState.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.state == ResultState.hasData) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.result.articles.length,
            itemBuilder: (context, index) {
              var article = state.result.articles[index];
              return CardArticle(article: article);
            },
          );
        } else if (state.state == ResultState.noData) {
          return Center(
            child: Material(
              child: Text(state.message),
            ),
          );
        } else if (state.state == ResultState.error) {
          return Center(
            child: Material(
              child: Text(state.message),
            ),
          );
        } else {
          return const Center(
            child: Material(
              child: Text(''),
            ),
          );
        }
      },
    );
  }

  // Widget _buildList(BuildContext context) {
  //   return Column(
  //     children: [
  //       ElevatedButton(
  //         onPressed: () {
  //           setState(() {
  //             initState();
  //           });
  //         },
  //         child: const Text('Resfresh Data'),
  //       ),
  //       FutureBuilder(
  //         future: _article,
  //         builder: (context, AsyncSnapshot<ArticlesResult> snapshot) {
  //           var state = snapshot.connectionState;
  //           if (state != ConnectionState.done) {
  //             return const Center(child: CircularProgressIndicator());
  //           } else {
  //             if (snapshot.hasData) {
  //               return ListView.builder(
  //                 shrinkWrap: true,
  //                 itemCount: snapshot.data?.articles.length,
  //                 itemBuilder: (context, index) {
  //                   var article = snapshot.data?.articles[index];
  //                   return CardArticle(article: article!);
  //                 },
  //               );
  //             } else if (snapshot.hasError) {
  //               return Center(
  //                 child: Material(
  //                   child: Text(snapshot.error.toString()),
  //                 ),
  //               );
  //             } else {
  //               return const Material(child: Text(''));
  //             }
  //           }
  //         },
  //       )
  //     ],
  //   );
  // }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App with api provider'),
      ),
      body: _buildList(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('News App Api Provider'),
        transitionBetweenRoutes: false,
      ),
      child: _buildList(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
