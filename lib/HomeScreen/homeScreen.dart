import 'package:flutter/material.dart';
import 'package:news/Category/category_Widget.dart';
import 'package:news/Category/category_details_Screen.dart';
import 'package:news/Setteings/settingsTab.dart';
import 'package:news/model/category.dart';

import '../news/news_search.dart';
import 'home_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.view_headline_sharp,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  showSearch(context: context, delegate: NewsSearch()),
              icon: Icon(
                Icons.search,
                size: 32,
                color: Colors.white,
              ))
        ],
        title: Text(
          'News App',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: HomeDrawer(onItemSideMenu: onItemSideMenuClick),
      ),
      body: selectedItemDrawe == HomeDrawer.settings
          ? SettingsTab()
          : selectedCategory == null
              ? CategoryWidget(onCategoryItemClick: onCategoryItemClick)
              : CategoryDetails(category: selectedCategory),
    );
  }

  Categoryy? selectedCategory = null;
  int selectedItemDrawe = HomeDrawer.categories;
  void onCategoryItemClick(Categoryy categoryy) {
    selectedCategory = categoryy;
    setState(() {});
  }

  void onItemSideMenuClick(int index) {
    selectedItemDrawe = index;
    Navigator.pop(context);
    selectedCategory = null ;
    setState(() {});
  }
}
