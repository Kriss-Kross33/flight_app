import 'package:flutter/material.dart';
import 'city_card.dart' show formatCurrency;
import 'flight_details_chip.dart';
import '../../app.dart' show appTheme;


class FlightListCard extends StatelessWidget{
  final Color flightBorderColor = Color(0xFFE6E6E6);
  final Color discountBackgroundColor = Color(0xFFFFE08D);
  final TextStyle _newPiceStyle = new TextStyle(fontSize: 18.0, color: Colors.black, 
  fontWeight: FontWeight.bold);
  final TextStyle _oldPriceStyle = new TextStyle(fontSize: 16.0, color: Colors.grey, 
  decoration: TextDecoration.lineThrough);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            decoration: BoxDecoration(
              border: Border.all(color: flightBorderColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("${formatCurrency.format(4500)}", style: _newPiceStyle,),
                    SizedBox(width: 5.0,),
                    Text("(${formatCurrency.format(6000)})", style: _oldPriceStyle,),
                  ],
                ),
                SizedBox(height: 10,),
                Wrap(
                  
                  children: <Widget>[
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlightDetailsChip(Icons.today, "Oct 2019"),
                        FlightDetailsChip(Icons.flight_takeoff, "Kenya Airways"),
                        FlightDetailsChip(Icons.star, "4.5"),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          ),
          _discountPositionedWidget(),
        ]
      ),
    );
  }

  Widget _discountPositionedWidget(){
    return Positioned(
      top: 10.0,
      right: 0.0,
      child: Container(
        margin: EdgeInsets.only(right: 5.0),
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Text("25%", style: TextStyle(color: appTheme.primaryColor, fontWeight: FontWeight.bold),),
        decoration: BoxDecoration(
          color: discountBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }

}