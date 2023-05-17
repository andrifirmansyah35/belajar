import 'package:data_internet/flutter_b_fundamental/e_scheduling/e_new_app_notification_dikoding/common/styles.dart';
import 'package:data_internet/flutter_b_fundamental/e_scheduling/e_new_app_notification_dikoding/data/model/article.dart';
import 'package:data_internet/flutter_b_fundamental/e_scheduling/e_new_app_notification_dikoding/ui/article_detail_page.dart';
import 'package:flutter/material.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: article.urlToImage != null
            ? Hero(
                tag: article.urlToImage!,
                child: Image.network(
                  article.urlToImage!,
                  width: 100,
                ),
              )
            : null,
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author ?? ''),
        onTap: () => Navigator.pushNamed(
          context,
          ArticleDetailPage.routeName,
          arguments: article,
        ),
      ),
    );
  }
}
