import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  final String name;
  final String date;
  final String iconimg;
  final String amount;

  const ListTiles({
    Key? key,
    required this.name,
    required this.date,
    required this.iconimg,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double iconSize = screenWidth * 0.15;
    double fontSize = screenWidth * 0.04;
    double spacing = screenWidth * 0.32;
    double amountfont = screenWidth*0.045;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: 10.0),
      child: Container(
        height: 90.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(color: Colors.grey, width: 2.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: 3.0),
          child: Row(
            children: [
              Image.asset(
                iconimg,
                height: iconSize,
                width: iconSize,
              ),
              SizedBox(width: screenWidth *0.026),
              Padding(
                padding: const EdgeInsets.only(top:9.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: fontSize,
                          ),
                        ),
                        Text(
                          date,
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: spacing),
              Text(
                "-\$$amount",
                style: TextStyle(fontSize: amountfont, color: Colors.redAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
