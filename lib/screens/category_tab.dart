import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/screens/category_item.dart';

class CategoriesTab extends StatelessWidget {
  List<CategoryModel> categories;
  Function onClicked;

  CategoriesTab(this.categories,this.onClicked);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Pick your category \n of interest"),
        ),
        Expanded(
          child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,

                  mainAxisSpacing: 20,crossAxisSpacing: 20
                  ),
              children: categories.map((cat) => InkWell(onTap: () {
                onClicked(cat);

              },

    child: CategoryItem(cat))).toList()),
        )
      ],
    );
  }
}
