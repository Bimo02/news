import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/category.dart';

class CategoryItemWidget extends StatelessWidget {
  Categoryy category;
  int index;
  CategoryItemWidget({required this.category, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: category.backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(index % 2 != 0 ? 12 : 0),
              bottomLeft: Radius.circular(index % 2 == 0 ? 12 : 0))),
      child: Column(

        children: [
          Image.asset(category.imagePath , height: 100,),
          Text(
            category.title,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
