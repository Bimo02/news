import 'package:flutter/material.dart';
import 'package:news/api_manger.dart';
import 'package:news/news/newsItem.dart';

import '../model/NewsResponse.dart';
import '../model/SourceResponse.dart';

class NewsContainer extends StatelessWidget {
  NewsContainer({required this.source});
  Sources source;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future:APIManger.getNews(sourceId: source.id ?? ''),
        builder: ((context, snapshot){

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text("Somthing went wrong"),
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
          var newsList=snapshot.data?.articles ?? [];
          return ListView.builder(itemBuilder: ((context,index){
            return NewsItem(news: newsList[index],);
          }), itemCount: newsList.length,);
        }));
  }
 }
