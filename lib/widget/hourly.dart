import 'package:flutter/material.dart';
import 'package:weather_app/widget/neumorph.dart';

class Hourly extends StatelessWidget {
  int? wind;
  String? img;
  int? temp;

  Hourly({this.wind, this.img, this.temp});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      width: 90,
      height: 110,
      decoration: neumorph2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '${wind}km/h',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          Image.asset(
            img!,
            width: 40,
          ),
          Text(
            '$temp\u00B0',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
