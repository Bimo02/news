import 'package:flutter/material.dart';
import 'package:news/Theme%20Data/my_theme.dart';

import '../api_manger.dart';
import '../model/NewsResponse.dart';
import 'newsItem.dart';

class NewsSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () => showResults(context),
          icon: Icon(Icons.search, size: 25))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.close, size: 25));
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: APIManger.getNews(searchKeyword: query),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("somthing went wrong"),
                ElevatedButton(onPressed: () {}, child: Text("Refresh"))
              ],
            );
          }

          if (snapshot.data?.status != 'ok') {
            // server has got message , code
            return Column(
              children: [
                Text(snapshot.data?.message ?? ""),
                ElevatedButton(onPressed: () {}, child: Text("Refresh"))
              ],
            );
          }
          var newsList = snapshot.data?.articles ?? [];
          return ListView.builder(
            itemBuilder: ((context, index) {
              return NewsItem(
                news: newsList[index],
              );
            }),
            itemCount: newsList.length,
          );
        }));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty)
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Please type something...",
          style: TextStyle(fontSize: 25),
        ),
      );
    return FutureBuilder<NewsResponse>(
        future: APIManger.getNews(searchKeyword: query),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("somthing went wrong"),
                ElevatedButton(onPressed: () {}, child: Text("Refresh"))
              ],
            );
          }

          if (snapshot.data?.status != 'ok') {
            // server has got message , code
            return Column(
              children: [
                Text(snapshot.data?.message ?? ""),
                ElevatedButton(onPressed: () {}, child: Text("Refresh"))
              ],
            );
          }
          var newsList = snapshot.data?.articles ?? [];
          return ListView.builder(
            itemBuilder: ((context, index) {
              return NewsItem(
                news: newsList[index],
              );
            }),
            itemCount: newsList.length,
          );
        }));
  }

  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
        appBarTheme: AppBarTheme(
      backgroundColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      )),
    ),
    searchBarTheme: SearchBarThemeData());
  }
}
