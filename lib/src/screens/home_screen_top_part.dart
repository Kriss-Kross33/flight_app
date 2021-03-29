import 'package:flight_app/src/screens/flight_listing.dart';
import 'package:flight_app/src/screens/providers/flight_listing_provider.dart';
import 'package:flight_app/src/screens/widget/choice_chip_widget.dart' as prefix0;
import 'package:flutter/material.dart';
import 'widget/custom_shape_clipper.dart';



class HomeScreenTopPart extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _HomeScreenTopPartState();
  }
}


class _HomeScreenTopPartState extends State<HomeScreenTopPart>{
  Color _firstColor = new Color(0xFFF47D15);
  Color _secondColor = new Color(0xFFEF772C);
  TextStyle locationDropDownLabelStyle = new TextStyle(color: Colors.white, fontSize: 16.0);
  TextStyle locationDropDownMenuItemStyle = new TextStyle(color: Colors.black, fontSize: 14.0);
  int selectedLocationIndex = 0;
  static List<String> locations = <String>[
    "Boston (BOS)",
    "New York City (JFK)",
  ];

  final TextEditingController locationController = TextEditingController(text: locations[1]);

  @override
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        clipPathWidget(),
      ],
    );
  }

  Widget clipPathWidget(){
    return ClipPath(
      child: Container(
        height: 420.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              _firstColor,
              _secondColor,
            ]
          )
        ),
        child: homeScreenTopPartColumn(),
        ),
      clipper: CustomShapeClipper(),
    );
  }

  Widget homeScreenTopPartColumn(){
    return Column(
      children: <Widget>[
        SizedBox(height: 45.0,),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.location_on, color: Colors.white,),
              SizedBox(width: 16.0,),
              locationPopUpButtonWidget(),
              Spacer(),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
        ),
        SizedBox(height: 50.0,),
        Text("Where would\nyou want to go?",
        style: TextStyle(color: Colors.white, fontSize: 24.0,),textAlign: TextAlign.center,),
        SizedBox(height: 30,),
        locationTextField(),
        SizedBox(height: 25.0,),
        flightHotelWidgets(),
      ],
    );
  }

  Widget locationTextField(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: TextField(
          controller: locationController,
          style: locationDropDownMenuItemStyle,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 15.0),
            suffixIcon: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              child: InkWell(
                child: Icon(Icons.search, color: Colors.black,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return FlightListingProvider(
                        fromLocation: locations[selectedLocationIndex], toLocation: locationController.text,
                        child: FlightListingScreen(),
                      );
                    }
                  ));
                },
                ),
            )
          ),
        ),
      ),
    );
  }

  Widget flightHotelWidgets(){
    var isFlightSelected = true;
    return  Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          InkWell(
            child: prefix0.ChoiceChip(Icons.flight_takeoff, "Flights", isFlightSelected),
            onTap: (){
              setState(() {
               isFlightSelected = true; 
              });
            },
          ),
          
          SizedBox(width: 20.0,),
          InkWell(
            child: prefix0.ChoiceChip(Icons.hotel, "Hotels", !isFlightSelected),
            onTap: (){
              setState(() {
               isFlightSelected = false; 
              });
            },
          ),
        ],
    );
  }

  Widget locationPopUpButtonWidget(){
    
    return PopupMenuButton(
      onSelected: (int index){
        setState(() {
          selectedLocationIndex = index; 
        });
      },
      itemBuilder: (BuildContext context){
        return <PopupMenuItem<int>>[
          PopupMenuItem(child: Text(locations[0], style: locationDropDownMenuItemStyle,), value: 0,),
          PopupMenuItem(child: Text(locations[1], style: locationDropDownMenuItemStyle,), value: 1,)
        ];
      },
      child: Row(
        children: <Widget>[
          Text(locations[selectedLocationIndex], style: locationDropDownLabelStyle,),
          Icon(Icons.keyboard_arrow_down, color: Colors.white,),
          
        ],
      ),
    );
  }
}