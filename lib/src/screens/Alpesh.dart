import 'package:flutter/material.dart';

class Alpesh extends StatelessWidget {
  const Alpesh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Alpesh"),),
    body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.deepPurpleAccent,
    ),
    );
  }
}