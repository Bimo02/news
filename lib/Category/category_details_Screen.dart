import 'package:flutter/material.dart';
import 'package:news/tabs/tab.dart';

import '../api_manger.dart';
import '../model/SourceResponse.dart';
import '../model/category.dart';

class CategoryDetails extends StatelessWidget {
  static const String routeName = 'Category details';
  static var sources = [];
  Categoryy? category ;
  CategoryDetails({this.category});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
        future: APIManger.getSources(category?.id ?? " "),
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
          var sourceList = snapshot.data?.sources ?? [];
          sources = sourceList;
          if (snapshot.data?.status != 'ok') {
            // server has got message , code
            return Column(
              children: [
                Text(snapshot.data?.message ?? ""),
                ElevatedButton(onPressed: () {}, child: Text("Refresh"))
              ],
            );
          }
          return TabContainer(sourceList: sourceList);
        }));
  }
}
