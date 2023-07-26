import 'package:flutter/material.dart';
import 'package:thirdapp/src/screens/About.dart';
import 'package:thirdapp/src/screens/Alpesh.dart';
import 'package:thirdapp/src/screens/Vinay.dart';
import 'package:thirdapp/src/screens/HomeScreen.dart';
import 'package:thirdapp/src/screens/Jangid.dart';
import 'package:thirdapp/src/screens/Login.dart';
import 'package:thirdapp/src/screens/ProdectScreen.dart';
import 'package:thirdapp/src/screens/Ragestr.dart';

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



@override
Widget build (BuildContext context){
  return Jangid();
}
}