import 'package:flutter/material.dart';
import 'package:news/Category/category_details_Screen.dart';
import 'package:news/news/news_details_screen.dart';
import 'package:news/providers/app_config_provider.dart';
import 'package:news/providers/themeProvider.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Theme Data/my_theme.dart';
import 'HomeScreen/homeScreen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
//  FirebaseFirestore.instance.settings =
  //    Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
  //await FirebaseFirestore.instance.disableNetwork();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final isDark =sharedPreferences.getBool('is_dark') ?? false;
  final isLanguage = sharedPreferences.getString('Ar')??'';
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=> AppConfigProvider(isLanguage)),
    ChangeNotifierProvider(create: (context) => ThemeProvider(isDark)),
  ], child: MyApp(isDark: isDark, isLanguage: isLanguage,)));
}

class MyApp extends StatelessWidget {
  final bool isDark;
  final String isLanguage;
  MyApp({required this.isDark , required this.isLanguage});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var providerTH = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CategoryDetails.routeName: (context) => CategoryDetails(),
        NewsDetailsScreen.routeName: (context) => NewsDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
      theme: MyThemeData.lightTheme,
      //darkTheme: MyThemeData.darktheme,
      themeMode: ThemeMode.light,
    );
  }
}

