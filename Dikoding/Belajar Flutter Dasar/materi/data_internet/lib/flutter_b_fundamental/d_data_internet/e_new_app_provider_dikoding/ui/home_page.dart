import 'dart:io';

import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/common/styles.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/ui/article_list_page.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/ui/settings_page.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/widgets/platform_widget.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/news_provider.dart';
import 'package:data_internet/flutter_b_fundamental/d_data_internet/e_new_app_provider_dikoding/data/api/api_service.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  static const String _headlineText = 'Headline';

  // final List<Widget> _listWidget = const [ //digantikan
  //   ArticleListPage(),
  //   SettingsPage(),
  // ];

  final List<Widget> _listWidget = [
    ChangeNotifierProvider<NewsProvider>(
      create: (_) => NewsProvider(apiService: ApiService()),
      child: const ArticleListPage(),
    ),
    const SettingsPage(),
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Platform.isIOS ? CupertinoIcons.news : Icons.public),
      label: _headlineText,
    ),
    BottomNavigationBarItem(
      icon: Icon(Platform.isIOS ? CupertinoIcons.settings : Icons.settings),
      label: SettingsPage.settingsTitle,
    ),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: secondaryColor,
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: _onBottomNavTapped,
      ),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: _bottomNavBarItems,
        activeColor: secondaryColor,
      ),
      tabBuilder: (context, index) {
        return _listWidget[index];
      },
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
