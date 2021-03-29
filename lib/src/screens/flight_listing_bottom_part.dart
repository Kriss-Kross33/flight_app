import 'package:flight_app/src/screens/widget/fligt_list_card.dart';
import 'package:flutter/material.dart';

 
class FlightListingBottomPart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40,),
          Text("Best deals for next six months", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          flightListView(),
        ],
      ),
    );
  }

  Widget flightListView(){
    return ListView(
      shrinkWrap: true ,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        FlightListCard(),
        FlightListCard(),
        FlightListCard(),
        FlightListCard(),
        FlightListCard(),
      ],
    );
  }

}