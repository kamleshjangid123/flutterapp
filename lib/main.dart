import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
return MaterialApp( 
  title: 'Flutter Demo',
  theme: ThemeData( 
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white38),
    useMaterial3: true,
  ),
  home: HomePage(),
);
  }
}

class HomePage extends StatelessWidget{
HomePage ({super.key});

var username=["Weight","Time","speed"];
var username1=["Length","Area","Volume"];
var username2=["Temper","Angle","Pressure"];


@override
Widget build (BuildContext context){
  return SingleChildScrollView(
    child: Column (children: [

      Container(
        margin: EdgeInsets.only(top: 10,right: 10,left: 10),
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 231, 222, 143),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          for(var i=0;i<username.length;i++)

          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            color: Color.fromARGB(255, 243, 227, 2),
            child: Column(children: [
              Icon(Icons.analytics,color: const Color.fromARGB(255, 20, 20, 20),size: 30,),
              Text("${username[i]}",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 37, 22, 22)),)
            ],),
          )
        ]),
      ),
      Container(
         margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 231, 222, 143),

         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          for(var i=0;i<username1.length;i++)

          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            color: Color.fromARGB(255, 243, 227, 2),
            child: Column(children: [
              Icon(Icons.analytics,color: const Color.fromARGB(255, 20, 20, 20),size: 30,),
              Text("${username1[i]}",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 37, 22, 22)),)
            ],),
          )
        ]),

      ),

      Container(

         margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 231, 222, 143),

         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

          for(var i=0;i<username2.length;i++)

          Container(
            margin: EdgeInsets.all(10),
            width: 100,
            color:  Color.fromARGB(255, 243, 227, 2),
            child: Column(children: [
              Icon(Icons.analytics,color: const Color.fromARGB(255, 20, 20, 20),size: 30,),
              Text("${username2[i]}",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 37, 22, 22)),)
            ],),
          )
        ]),


      )
    ],),
  );
}
}