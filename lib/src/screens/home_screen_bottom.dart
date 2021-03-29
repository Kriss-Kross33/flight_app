import 'package:flight_app/src/screens/widget/city_card.dart';
import 'package:flutter/material.dart';
import '../app.dart' show appTheme;

var homeScreenBottomPart = Column(
  children: <Widget>[
    currentlyWatchedItemsRow(),
    Container(
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cityCards,
      ),
    )
  ],
);

Widget currentlyWatchedItemsRow(){
  return Padding(
    padding: const EdgeInsets.all(18),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("Currently Watched Items", style: TextStyle(color: Colors.black, fontSize: 14.0),),
        Spacer(),
        Text("VIEW ALL (10)", style: TextStyle(color: appTheme.primaryColor, fontSize: 14.0),),
      ],
    ),
  );
}