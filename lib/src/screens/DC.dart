import 'package:flutter/material.dart';
import 'package:thirdapp/main.dart';
import 'package:thirdapp/src/screens/HomeScreen.dart';

class DC extends StatelessWidget {
  DC({super.key});

  var n1=["Superman","Batman","Flash"];
  var i1=["superman.jpg","batman.jpg","flash.jpg"];

  var n2=["Aquaman","Wonder Woman","Captain Marvel"];
  var i2=["aman.jpg","ww.jpg","mwoman.jpg"];

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h=MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
      title: Text("DC",style: TextStyle(fontSize: 30,color: const Color.fromARGB(255, 39, 39, 39),fontWeight:FontWeight.bold),),
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
    ),
    
    body: Container(
      height: h,
      width: w,
      color: Colors.black,
      child: SingleChildScrollView(
        child: 
        Column(children: [
          Container(
            width: w,
            margin: EdgeInsets.all(5),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                for (var i=0;i<n1.length;i++)
               
                Container(
                  margin: EdgeInsets.all(5),
                  width: 120,
                  height: 200,
                  
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: Color.fromARGB(96, 90, 88, 88)),
                  clipBehavior: Clip.antiAlias,
                child: Column(children: [

                    TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())), child: 
                    
              Image.asset('images/${i1[i]}',width: w*.5,height: h*.3,),
              
                    ),
              Text("${n1[i]}",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),),

                ],),
                ),
              ],
            )
          ),

          Container(
            width: w,
            margin: EdgeInsets.all(5),
            
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                for (var i=0; i<n2.length; i++)

              Container(
                height: 200,
                width: 120,

                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color:Color.fromARGB(96, 90, 88, 88) ),
                clipBehavior: Clip.antiAlias,

                child: Column(children: [


                  Image.asset('images/${i2[i]}',height: h*.3, width: w*.3,),
                  Text("${n2[i]}",style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontSize: 15 ),)
                ]),

              )
            ],),
          )

        ],)
      )
    ),
    
    );
  }
}