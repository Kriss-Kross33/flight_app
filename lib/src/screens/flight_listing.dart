import 'package:flight_app/src/screens/flight_listing_bottom_part.dart';
import 'package:flutter/material.dart';

import 'flight_listing_top_part.dart';


class FlightListingScreen extends StatelessWidget{
  final String fromLocation, toLocation;
  FlightListingScreen({this.fromLocation, this.toLocation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Search Results"),
        centerTitle: true,
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: (){
            Navigator.pop(context);
          },
          ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
              children: <Widget>[
                FlightListingTopPart(),
                FlightListingBottomPart(),
              ],
            ),
      ),

    );
  }

}