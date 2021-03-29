import 'package:flutter/material.dart';
import 'home_screen_bottom.dart';
import 'home_screen_top_part.dart';
import 'widget/bottom_navigation.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: CustomBottomNavWidget(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            HomeScreenTopPart(),
            homeScreenBottomPart,
          ],
        ),
      ),
    );
  }
}