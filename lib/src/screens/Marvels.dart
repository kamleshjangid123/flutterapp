import 'package:flutter/material.dart';
import 'package:thirdapp/src/screens/Single.dart';

class Marvels extends StatelessWidget {
   Marvels ({super.key});

var Name1=["IronMan","Thor","SpiderMan"];
var Image1=["ironman.png","thor.png","spiderman.png"];

var Name2=["Hulk","Dr Strange","Captain America"];
var Image2=["png-hulk-avengers-vingadores-thor-ragnarok-png-world-9.png","Doctor-Strange-Transparent.png","Captain-America-Free-Download-PNG.png"];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 248, 43, 43),
      title: Text("Marvel",style: TextStyle(fontSize: 30),)
    ),
    body: 
    Container(
      
          


      height:h,
      width: w,
      color: Colors.black,
      child: SingleChildScrollView(
            
           
              
      child: Column(children: [

      Container(
        margin: EdgeInsets.all(5) ,
        
        width: MediaQuery.of(context).size.width,
        
        child:  
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

           for(var i=0; i<Name1.length; i++)

           Container(
            margin: EdgeInsets.all(7),
            width: 120,
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color:const Color.fromARGB(255, 24, 23, 23) ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                
                  TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Single("${Name1[i]}"))),
                   child:Image.asset('images/${Image1[i]}',width: w*.2,height: h*.3,),),
              Text("${Name1[i]}",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),)
            ],),
           )

          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(5) ,
        
        width: MediaQuery.of(context).size.width,
        child: Row(
        
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

           for(var i=0; i<Name2.length; i++)

           Container(
            margin: EdgeInsets.all(7),
            width: 120,
            height: 200,
           decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),color:Color.fromARGB(255, 17, 17, 17) ),
            clipBehavior: Clip.antiAlias,
            
            child: Column(
              children: [
                
              Image.asset('images/${Image2[i]}',height: h*.3,width: w*.2,),
              Text("${Name2[i]}",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),)
            ],),
           )

          ],
        ),
      )    
      ]),
    
      ),

    )  

    ) ;
  }
}