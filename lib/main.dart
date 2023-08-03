import 'package:flutter/material.dart';
import 'package:thirdapp/src/screens/About.dart';
import 'package:thirdapp/src/screens/Alpesh.dart';
import 'package:thirdapp/src/screens/HomeScreen.dart';
import 'package:thirdapp/src/screens/Jangid.dart';
import 'package:thirdapp/src/screens/Marvels.dart';
import 'package:thirdapp/src/screens/My.dart';

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
    colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(97, 231, 69, 69)),
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
  return Marvels();
}
}