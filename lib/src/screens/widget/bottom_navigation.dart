import 'package:flutter/material.dart';
import '../../app.dart';




class CustomBottomNavWidget extends StatelessWidget{
  final List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[];
  final TextStyle navBarTextStyle = new TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold);

  CustomBottomNavWidget(){
    bottomNavItems.add(
      new BottomNavigationBarItem(
        activeIcon: Icon(Icons.home, color: appTheme.primaryColor,),
        title: Text("Home", style: navBarTextStyle,),
        icon: Icon(Icons.home, color: Colors.black,),
      ),
    );
    bottomNavItems.add(
      new BottomNavigationBarItem(
        title: Text("Wishlist", style: navBarTextStyle,),
        icon: Icon(Icons.favorite, color: Colors.black,),
      ),
    );
    bottomNavItems.add(
      new BottomNavigationBarItem(
        title: Text("Deals", style: navBarTextStyle,),
        icon: Icon(Icons.local_offer, color: Colors.black,),
      ),
    );
    bottomNavItems.add(
      new BottomNavigationBarItem(
        title: Text("Notifications", style: navBarTextStyle,),
        icon: Icon(Icons.notifications, color: Colors.black,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: BottomNavigationBar(
        items: bottomNavItems,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appTheme.primaryColor,
        selectedIconTheme: IconThemeData(color: appTheme.primaryColor),
      ),
    );
  }

}