import 'package:flutter/material.dart';
import 'package:thirdapp/src/component/HeaderHomeComponent.dart';
import 'package:thirdapp/src/screens/Marvels.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    var h= MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: w,
        height: h*1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h*.1,
                child: HeaderHomeComponent(),
              ),
              Container(
                
                width: w,
                height: h*4,
                
                
                child: Column(
                  children: [
                     TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Marvels())), child:
                    Text("Marvel Movies"),
                     ),
                    
                    Image.asset("images/allmarvels.jpg")
                    

                  ],
                
                )
                
                
                
                
              )
            ],
          ),),

          
      ),
      
      
    );
  }
}