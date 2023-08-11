import 'package:flutter/material.dart';
import 'package:thirdapp/src/screens/DC.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('About app'),),
    body: Container(
      
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 190, 162, 238),
      child: Column(children: [
        
        
        Icon(Icons.account_box_rounded,size: 50,color: const Color.fromARGB(255, 107, 1, 126),),
        
        TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DC())), child: 
        Text("My First App",style: TextStyle(color: Colors.black,fontSize: 35),),
        )

      ],),

    ) ,
    );
  }
}