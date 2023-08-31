import 'package:flutter/material.dart';
import 'package:news/Category/categroyItemWidget.dart';
import 'package:news/model/category.dart';

class CategoryWidget extends StatelessWidget {
  var categoryList = Categoryy.getCategroy();
  Function onCategoryItemClick;
  CategoryWidget({required this.onCategoryItemClick});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Pick Your Category \n of Interest",
            maxLines: 2,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 18, crossAxisSpacing: 18),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      onCategoryItemClick(categoryList[index]);
                    },
                    child: CategoryItemWidget(
                        category: categoryList[index], index: index));
              },
              itemCount: categoryList.length,
            ),
          )
        ],
      ),
    );
  }
}
