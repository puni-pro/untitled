



import 'package:flutter/material.dart';

class YearsPage extends StatelessWidget{


  var listItem = ["１年", "２年", "３年","４年","５年"];
  String s;
  int cl;

  YearsPage(this.cl, this.s, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(s),
      ),

        body:Center(
          child:ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Text(listItem[index]);
            },
            itemCount: listItem.length,
          ),
        )


    );
  }


}