import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

class CategoryItem extends StatelessWidget {
CategoryModel categoryModel;


CategoryItem(this.categoryModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
         color: categoryModel.color,
          borderRadius: BorderRadius.circular(20),
        ),
child: Column(
  children: [
      Expanded(child: Image.asset(categoryModel.image)),
      Text(categoryModel.name,style: TextStyle(color: Colors.white
          ,fontSize: 18),)
  ],
),
      ),
    );
  }
}
