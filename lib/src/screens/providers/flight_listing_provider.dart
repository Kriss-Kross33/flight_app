import 'package:flutter/material.dart';


class FlightListingProvider extends InheritedWidget{

  final String fromLocation, toLocation;

  FlightListingProvider({this.fromLocation, this.toLocation, Widget child}): super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static FlightListingProvider of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(FlightListingProvider));
  }

}