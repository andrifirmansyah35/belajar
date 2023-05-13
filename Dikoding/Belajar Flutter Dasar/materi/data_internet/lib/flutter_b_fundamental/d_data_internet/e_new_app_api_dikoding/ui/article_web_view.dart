// import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_api_dikoding/widgets/custom_scaffold.dart';
// import 'package:flutter/widgets.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_api_dikoding/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// class ArticleWebView extends StatelessWidget {
//   static const routeName = '/article_web';

//   final String url;

//   const ArticleWebView({Key? key, required this.url}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomScaffold(
//       body: WebView(
//         initialUrl: url,
//       ),
//     );
//   }
// }

class ArticleWebView extends StatelessWidget {
  static const routeName = '/article_web';

  final String url;

  const ArticleWebView({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()..loadRequest(Uri.parse(url));

    return CustomScaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
