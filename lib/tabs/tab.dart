import 'package:flutter/material.dart';
import 'package:news/tabs/tabItem.dart';
import 'package:news/model/SourceResponse.dart';

import '../news/news_container.dart';

class TabContainer extends StatefulWidget {
  List<Sources> sourceList;
  TabContainer({required this.sourceList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: DefaultTabController(
        length: widget.sourceList.length,
        child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                indicatorColor: Colors.transparent,
                isScrollable: true,
                tabs: widget.sourceList
                    .map((source) => TabItems(
                        source: source,
                        isSelected:
                            selectedIndex == widget.sourceList.indexOf(source)))
                    .toList()),
            Expanded(
                child: NewsContainer(source: widget.sourceList[selectedIndex]))
          ],
        ),
      ),
    );
  }
}
