// ignore_for_file: avoid_print, unused_import

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:data_internet/flutter_b_fundamental/d_data_internet/f_new_app_provider/article.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  static const String _baseUrl = 'https://newsapi.org/v2/';
  static const String _apiKey = '9e549d0fae2e4fc899f13a488b433f49';
  static const String _category = 'business';
  static const String _country = 'id';

  Future<ArticlesResult> topHeadlines() async {
    final response = await http.get(Uri.parse(
        "${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if (response.statusCode == 200) {
      // print('api service');
      print(response.body);
      return ArticlesResult.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
