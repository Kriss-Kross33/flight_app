import 'package:flight_app/src/screens/widget/custom_shape_clipper.dart';
import 'package:flutter/material.dart';
import 'providers/flight_listing_provider.dart';


class FlightListingTopPart extends StatelessWidget{
  final Color _firstColor = new Color(0xFFF47D15);
  final Color _secondColor = new Color(0xFFEF772C);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        listingClipPathWidget(),
        Column(
          children: <Widget>[
            flightTopCardWidget(context),
        ],
      ),
      ] 
    );
  }

  Widget flightTopCardWidget(BuildContext context){
    return Column(
      children: <Widget>[
        SizedBox(height: 20.0,),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          elevation: 10.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("${FlightListingProvider.of(context).fromLocation}", style: TextStyle(color: Colors.black, fontSize: 12.0)),
                      Divider(color: Colors.grey, height: 20.0,),
                      Text("${FlightListingProvider.of(context).toLocation}", style: TextStyle(color: Colors.black, fontSize: 14.0, 
                      fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.import_export, color: Colors.black, size: 35.0,)),
              ],
            ),
          )
        )
      ],
    );
  }

  Widget listingClipPathWidget(){
    return ClipPath(
      clipper: CustomShapeClipper(),
      child: Container(
        height: 160.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              _firstColor,
              _secondColor,
            ]
          ),
        ),
      ),
    );
  }

}