import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/article.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/detail_page.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: article.urlToImage != null
            ? Hero(
                tag: article.url,
                child: Image.network(
                  article.urlToImage!,
                  width: 100,
                ),
              )
            : null,
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author ?? ""),
        onTap: () => Navigator.pushNamed(
          context,
          ArticleDetailPage.routeName,
          arguments: article,
        ),
      ),
    );
  }
}
