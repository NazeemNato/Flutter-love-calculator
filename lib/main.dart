import 'package:flutter/material.dart';
import 'package:love_cal/screens/map_screen.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Love Calculator',
      debugShowCheckedModeBanner: false,
      home: MapScreens(),
theme: ThemeData.dark(),
    );
  }
}