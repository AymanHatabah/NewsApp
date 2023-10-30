
import 'package:flutter/material.dart';

class DrawerTab extends StatelessWidget {
  Function onclick;
  DrawerTab(this.onclick,{super.key});
  static int Cat_Id=1;
  static int Sett_Id=2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width*0.6,
        color: Colors.white,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Center(child: Text("News App",style: TextStyle(fontSize: 20),)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap:  () {
                  onclick(Cat_Id);

                },
                child: Row(
                  children: [
                    Icon(Icons.more_outlined,color: Colors.black,size: 25,),
                    SizedBox(width: 10,),
                    Text("Categories"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  onclick(Sett_Id);
                },
                child: Row(
                  children: [
                    Icon(Icons.settings,color: Colors.black,size: 25,),
                    SizedBox(width: 10,),
                    Text("Settings"),
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
