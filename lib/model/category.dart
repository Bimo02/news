import 'package:flutter/material.dart';
import 'package:news/Theme%20Data/my_theme.dart';

class Categoryy {
  String id;
  String title;
  String imagePath;
 final Color backgroundColor;
  Categoryy(
      {required this.id,
      required this.title,
      required this.backgroundColor,
      required this.imagePath});
   static    List<Categoryy> getCategroy() {
    return [
      Categoryy(
          id: 'sports',
          title: "Sports",
          backgroundColor: MyThemeData.redColor,
          imagePath: "assets/ball.png"),
      Categoryy(
          id: 'technology',
          title: "Technology",
          backgroundColor: Colors.blue,
          imagePath: "assets/Politics.png"),
      Categoryy(
          id: 'health',
          title: "Health",
          backgroundColor: MyThemeData.pinkColor,
          imagePath: "assets/health.png"),
      Categoryy(
          id: 'business',
          title: "Business",
          backgroundColor: MyThemeData.brownColor,
          imagePath: "assets/bussines.png"),
      Categoryy(
          id: 'entertainment',
          title: "Entertainment",
          backgroundColor: MyThemeData.blueColor,
          imagePath: "assets/environment.png"),
      Categoryy(
          id: 'science',
          title: "Science",
          backgroundColor: Colors.blueAccent,
          imagePath: "assets/science.png"),
      Categoryy(
          id: 'general',
          title: "General",
          backgroundColor: MyThemeData.redColor,
          imagePath: "assets/science.png"),

    ];
  }
}
