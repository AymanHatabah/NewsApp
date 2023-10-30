import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String id;
  String image;
  Color color;

  CategoryModel(this.name, this.id, this.image, this.color);

  static List<CategoryModel> getCategories() {
    return [
      CategoryModel("Sports", "sports", "assets/images/sports.png", Colors.red),
      CategoryModel(
          "Business", "business", "assets/images/bussines.png", Colors.orange),
      CategoryModel(
          "Science", "science", "assets/images/science.png", Colors.yellow),
      CategoryModel(
          "General", "general", "assets/images/Politics.png", Colors.blue),
      CategoryModel("Entertainment", "entertainment",
          "assets/images/environment.png", Colors.blueAccent),
      CategoryModel(
          "Health", "health", "assets/images/health.png", Colors.pink),
    ];
  }
}
