import 'package:flutter/material.dart';
import 'package:news/model/SourceResponse.dart';

class TabItems extends StatelessWidget {
   TabItems({required this.source , required this.isSelected});
  Sources source;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color:Theme.of(context).primaryColor)
      ), child: Text(source.name ?? '' , style:  TextStyle(fontSize: 22 , fontWeight: FontWeight.bold , color: isSelected? Colors.white : Theme.of(context).primaryColor  ),),
    );
  }
}
