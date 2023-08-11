import 'package:flutter/material.dart';

class Jangid extends StatelessWidget {
  const Jangid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Jangid"),),
    body: Container(
      
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.deepPurple,
      child: Column(children: [
        Text("samyak",style: TextStyle(color: Color.fromARGB(255, 7, 255, 255),fontSize: 25),),
        Icon(Icons.account_box_outlined,size: 30,color: Colors.yellow,)
      ],),
    ),
    );
  }
}