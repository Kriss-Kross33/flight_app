import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Kriss Flight",
      home: HomeScreen(),
      theme: appTheme,
    );
  }


}
final ThemeData appTheme = new ThemeData(
    primaryColor: Color(0xFFF3791A),
    fontFamily: "Oxygen",
  );
