import 'package:flutter/material.dart';
import 'package:news/models/SourcesResponse.dart';
import 'package:news/network/remote/api_manager.dart';
import 'package:news/screens/news_card_item.dart';
import 'package:news/screens/sources_item.dart';

class TabControllerWidget extends StatefulWidget {
  List<Sources> source;

  TabControllerWidget(this.source);

  @override
  State<TabControllerWidget> createState() => _TabControllerWidgetState();
}

class _TabControllerWidgetState extends State<TabControllerWidget> {
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.source.length,
            child: TabBar(
                onTap: (index) {
                  SelectedIndex = index;
                  setState(() {});
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.source
                    .map((sources) =>
                    Tab(
                      child: SourcesItem(sources,
                          widget.source.indexOf(sources) == SelectedIndex),
                    ))
                    .toList())),
        FutureBuilder(
          future: ApiManger.getNewsData(widget.source[SelectedIndex].id ?? ""),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("something wrong"));
            }
            var newsList = snapshot.data?.articles ?? [];
            return Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return NewsCaerdItem(newsList[index]);
              }
                , itemCount: newsList.length,),
            );
          },
        )
      ],
    );
  }
}
