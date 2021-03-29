import 'package:flutter/material.dart';


class FlightDetailsChip extends StatelessWidget{
  final IconData icon;
  final String labelText;
  final Color chipBackgroundColor = Color(0xFFF6F6F6);

  FlightDetailsChip(this.icon, this.labelText);

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(labelText),
      labelStyle: TextStyle(fontSize: 12, color: Colors.black),
      avatar: Icon(icon, size: 16,),
      backgroundColor: chipBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
    );
  }

}