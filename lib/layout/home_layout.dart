import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/network/remote/api_manager.dart';
import 'package:news/screens/category_tab.dart';
import 'package:news/screens/drawer.dart';
import 'package:news/screens/news_tab.dart';
import 'package:news/screens/tab_controller.dart';

class Home extends StatefulWidget {
  static const String routename = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = CategoryModel.getCategories();
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage("assets/images/pattern.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          drawer:DrawerTab(onDrawerClick),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.green,
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.transparent)),
            title: Text("News"),
          ),
          body:categoryModel==null? CategoriesTab(categories,onCategoryClick)
         :NewsTab(categoryModel!.id)
          ),
    );
  }

  CategoryModel? categoryModel=null;

  onCategoryClick(category){
categoryModel=category;
setState(() {

});
  }
  onDrawerClick(int id){
    if(id==DrawerTab.Cat_Id){
categoryModel=null;
    }else if(id==DrawerTab.Sett_Id){

    }
setState(() {
  Navigator.pop(context);
});
  }
}
