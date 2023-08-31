import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/NewsResponse.dart';
import 'model/SourceResponse.dart';
import 'model/TopHeadLineResponse.dart';

class APIManger {
  static const String baseUrl = 'newsapi.org';
  static Future<SourceResponse> getSources(String categoryID) async {
    //https://newsapi.org/v2/top-headlines/sources?apiKey=e942358924a24c2fbdd9367824a49a52
    var url = Uri.https(baseUrl, "/v2/top-headlines/sources", {
      "apiKey": "0f2fffbe8b1f4bc4b45b2c35859b34d3",
      "category" : categoryID
    });
    var response = await http.get(url);
    try {
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var sourceResponse = SourceResponse.fromJson(json);
      return sourceResponse;
    } catch (e) {
      throw e;
    }
  }

  static Future<NewsResponse> getNews({
      String? sourceId, String? searchKeyword}) async {
    //https://newsapi.org/v2/everything?q=bitcoin&apiKey=e942358924a24c2fbdd9367824a49a52
    var url = Uri.https(baseUrl, '/v2/everything', {
      "apiKey": "0f2fffbe8b1f4bc4b45b2c35859b34d3",
      "sources": sourceId,
      "q": searchKeyword
    });
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var newsResponse = NewsResponse.fromJson(json);
      return newsResponse;
    } catch (e) {
      throw e;
    }
  }

  static Future<TopHeadLineResponse> getBreakingNews() async {
    //https://newsapi.org/v2/top-headlines?country=us&apiKey=0f2fffbe8b1f4bc4b45b2c35859b34d3
    var url = Uri.https(baseUrl, "/v2/top-headlines", {
      "apiKey": "0f2fffbe8b1f4bc4b45b2c35859b34d3",
    });
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      var breakingNews = TopHeadLineResponse.fromJson(json);
      return breakingNews;
    } catch (e) {
      throw e;
    }
  }
}
