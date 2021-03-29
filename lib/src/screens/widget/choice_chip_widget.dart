import 'package:flutter/material.dart';


class ChoiceChip extends StatefulWidget{
  final IconData icon;
  final String text;
  final bool isSelected;

  ChoiceChip(this.icon, this.text, this.isSelected);

  @override
  State<StatefulWidget> createState() {
    return _ChoiceChipState();
  }

}

class _ChoiceChipState extends State<ChoiceChip>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: widget.isSelected ? BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white.withOpacity(0.15)
      ): null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(widget.icon, size: 20.0, color: Colors.white,),
          Text(widget.text, style: TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),)
        ],
      ),
    );
  }

}
