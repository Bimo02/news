import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/NewsResponse.dart';

class NewsDetailsScreen extends StatelessWidget {
  NewsDetailsScreen({super.key});
  static const String routeName = 'News Details Screen';
  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)?.settings.arguments as News;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(
                  news.urlToImage ?? '',
                  height: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Text(
                news.author ?? '',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                news.title ?? '',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                news.publishedAt ?? '',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.end,
              ),
              Text(
                news.description ?? '',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
              TextButton(
                  onPressed: () => _lanuchUrl(news.url),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "View Full Article",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _lanuchUrl(String? url) async{
    if(url == null)
      return;
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri))
      {
        launchUrl(uri);
      }
  }
}
