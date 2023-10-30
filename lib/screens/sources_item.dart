import 'package:flutter/material.dart';
import 'package:news/models/SourcesResponse.dart';

class SourcesItem extends StatelessWidget {
 Sources sources;
 bool selected;


 SourcesItem(this.sources, this.selected);

 @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6,horizontal:12 ),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(25),
            color: selected?Colors.green:Colors.transparent,
        border: Border.all(
          color: selected?Colors.green:Colors.transparent
        ),

      ),
      
child: Text(sources.name??"",style: TextStyle(
  color: selected?Colors.white:Colors.green
),),
    );
  }
}
