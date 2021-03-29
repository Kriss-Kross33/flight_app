import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


final formatCurrency = NumberFormat.simpleCurrency();

class CityCard extends StatelessWidget{
  final String imageName, imagePath, date, discount;
  final int oldPrice, newPrice;

  CityCard(this.imageName, this.imagePath, this.date, this.discount, this.oldPrice, this.newPrice);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Stack(
              children: <Widget>[
                cityCardImageWidget(),
                cityCardTransparentPositionWidget(),
                cityCardDetailsPositionWidget(),
                
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          cityCardPriceRow(),
        ],
      ),
    );
  }

  Widget cityCardPriceRow(){
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("${formatCurrency.format(newPrice)}", style: TextStyle(color: Colors.black, fontSize: 14.0, 
        fontWeight: FontWeight.bold),),
        SizedBox(width: 5.0,),
        Text("${(formatCurrency.format(oldPrice))}", style: TextStyle(color: Colors.grey, fontSize: 14.0,
        decoration: TextDecoration.lineThrough),)
      ],
    );
  }

  Widget cityCardDetailsPositionWidget(){
    return Positioned(
      left: 10.0,
      bottom: 10.0,
      right: 10.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(imageName, style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
              Text(date, style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.normal),)
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                child: Text(discount, style: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.normal),)),
            ],
          ),
        ],
      ),
    );
  }

  Widget cityCardTransparentPositionWidget(){
    return Positioned(
      left: 0.0,
      bottom: 0.0,
      child: Container(
        width: 160.0,
        height: 60.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: <Color>[
              Colors.black.withOpacity(0.1),
              Colors.black26,
            ],
          )
        ),
      ),
    );
  }

  Widget cityCardImageWidget(){
    return Container(
      height: 210.0,
      width: 160.0,
      child: Image.asset(imagePath, fit: BoxFit.cover,),
      
    );
  }

}

final List<CityCard> cityCards= <CityCard>[
  CityCard("Venice", "assets/images/athens.jpg", "Oct 2019", "10%", 5000, 4500),
  CityCard("Las Vegas", "assets/images/lasvegas.jpg", "Dec 2019", "25%", 6000, 4500),
  CityCard("Sydney", "assets/images/sydney.jpeg", "Sep 2019", "20%", 4000, 3200),
];