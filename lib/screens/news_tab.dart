import 'package:flutter/material.dart';
import 'package:news/network/remote/api_manager.dart';
import 'package:news/screens/tab_controller.dart';

class NewsTab extends StatelessWidget {
 String catId;


 NewsTab(this.catId);

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("Something wrong"));
              }
              var sourcesList = snapshot.data?.sources ?? [];
              return TabControllerWidget(sourcesList);

            },
            future: ApiManger.getSource(catId)

    );
  }
}
