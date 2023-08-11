

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thirdapp/src/component/HeaderHomeComponent.dart';

class Single extends StatefulWidget {
  var name ;
   Single(String name){
    this.name=name;
   }

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  @override
  Widget build(BuildContext context) {

var d = widget.name;
print(d);

    return Scaffold(
     
      body: Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child:Column(children: [
 Container(
          height:  MediaQuery.of(context).size.height*.1,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          child:HeaderHomeComponent()),
           Container(
          height:  MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          child:Text("${d}"))
        ],)
        )
      ),

    );
  }
}