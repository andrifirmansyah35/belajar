// import 'package:flutter/material.dart';
// import 'package:data_internet/flutter_b_fundamental/c_state_management/new_app_api/article.dart';
// import 'package:data_internet/flutter_b_fundamental/c_state_management/new_app_api/article_webview.dart';

// class ArticleDetailPage extends StatelessWidget {
//   static const routeName = '/article_detail';

//   final Article article;

//   const ArticleDetailPage({Key? key, required this.article}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(article.title),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Hero(
//                 tag: article.urlToImage,
//                 child: Image.network(article.urlToImage)),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(article.description),
//                   const Divider(color: Colors.grey),
//                   Text(
//                     article.description,
//                     style: const TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 24),
//                   ),
//                   const Divider(color: Colors.grey),
//                   Text('Date: ${article.publishedAt}'),
//                   const SizedBox(height: 10),
//                   Text('Author: ${article.author}'),
//                   const Divider(color: Colors.grey),
//                   Text(
//                     article.content,
//                     style: const TextStyle(fontSize: 16),
//                   ),
//                   const SizedBox(height: 10),
//                   ElevatedButton(
//                     child: const Text('Read more'),
//                     onPressed: () {
//                       Navigator.pushNamed(context, ArticleWebView.routeName,
//                           arguments: article.url);
//                     },
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_api/article.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_api/article_webview.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;

  const ArticleDetailPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (article.urlToImage != null)
              Hero(
                tag: article.urlToImage!,
                child: Image.network(article.urlToImage!),
              ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.description ?? "",
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    article.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    'Date: ${article.publishedAt}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Author: ${article.author}',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const Divider(color: Colors.grey),
                  Text(
                    article.content ?? "",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text('Read more'),
                    onPressed: () {
                      Navigator.pushNamed(context, ArticleWebView.routeName,
                          arguments: article.url);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
