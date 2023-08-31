import 'package:flutter/material.dart';
import 'package:news/news/news_details_screen.dart';

import '../model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
  NewsItem({required this.news});
  News news;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(NewsDetailsScreen.routeName , arguments: news);
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(news.urlToImage ?? '' ,
                height: MediaQuery.of(context).size.height*0.2,
              fit: BoxFit.cover , width: double.infinity,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                news.author ?? '',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
                ),
              ),
            ),
            Text(
              news.title ?? '',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                news.publishedAt ?? '',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
