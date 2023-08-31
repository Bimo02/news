import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData {
  static Color lightprim = Color(0xFF39A552);
  //static Color darkprim = Color(0xFF060E1E);
  static Color colorblack  = Color(0xFF303030);
  static Color colorwihte = Color(0xFFFFFFFF);
  static Color redColor = Color(0xFFC91C22);
  static Color pinkColor = Color(0xFFED1E79);
  static Color brownColor = Color(0xFFCF7E48);
  static Color blueColor = Color(0xFF4882CF);
  static Color yellowColor = Color(0xFFF2D352);
  static Color gryColor = Color(0xFF4F5A69);
  static ThemeData lightTheme = ThemeData(
      primaryColor: lightprim,
      backgroundColor: colorwihte,
      dividerColor: Colors.grey,
      scaffoldBackgroundColor: colorwihte, //Scaffold
      appBarTheme: AppBarTheme(
          backgroundColor: lightprim,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight:  Radius.circular(30),
          )
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        )
          ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: lightprim,
          unselectedItemColor: Colors.grey,),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.white
      ),
      /*floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: lightprimlow,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: Colors.white, width: 4))),*/
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            color: MyThemeData.colorwihte,
            fontWeight: FontWeight.bold,
            fontSize: 22),
        headline2: GoogleFonts.poppins(
            color: MyThemeData.colorblack,
            fontWeight: FontWeight.bold,
            fontSize: 18),
        subtitle1: GoogleFonts.roboto(
            color: lightprim,
            fontWeight: FontWeight.w400,
            fontSize: 14),
        subtitle2: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14),
        //labelMedium: GoogleFonts.roboto(
           // color: lightprimlow, fontWeight: FontWeight.bold, fontSize: 14),
        headline3: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14),
        headline4: GoogleFonts.merriweather(
          color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18),
        headline5: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16),
        headline6: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 13),
        caption: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 13),

      ));
 /* static ThemeData darktheme = ThemeData(
      primaryColor: darkprim,
      primaryColorLight: darksec,
      hoverColor: darksec,
      backgroundColor: darksec,
      dividerColor: darksec,
      highlightColor: blacklight,
      iconTheme: IconThemeData(color: darkprim),
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStateProperty.all(darkprim),
              backgroundColor: MaterialStateProperty.all(darkprim))),
      scaffoldBackgroundColor: darkprim,
      appBarTheme: AppBarTheme(
        elevation: 0,
          backgroundColor: darksec,
          iconTheme: IconThemeData(color: colorblack)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
          backgroundColor: blacklight,
          selectedItemColor: darksec,
          unselectedItemColor: colorwihte),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
          backgroundColor: darksec,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: blacklight, width: 4))),
      textTheme: TextTheme(
        headline1: GoogleFonts.poppins(
            color: MyThemeData.blacklight,
            fontWeight: FontWeight.bold,
            fontSize: 22),
        headline2: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14),
        subtitle1: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18),
        subtitle2: GoogleFonts.roboto(
            color:  Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20),
        labelMedium: GoogleFonts.roboto(
            color: lightprimlow, fontWeight: FontWeight.bold, fontSize: 14),
        headline3: GoogleFonts.poppins(
            color: MyThemeData.lightprimlow,
            fontWeight: FontWeight.bold,
            fontSize: 18),
        headline4: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15),
        headline5: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15),
        headline6: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17),
      ));*/
}
