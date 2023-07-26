import 'package:flutter/material.dart';

class ProdectScreen extends StatelessWidget {
  const ProdectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProdectScreen")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.greenAccent,
      ),
   
    );
  }
}