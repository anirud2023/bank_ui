import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String informname;
  final String amount;
  final String cardeprovidername;
  final String cardednumber;
  final String image;

  const MyCard({
    Key? key,
    required this.amount,
    required this.cardednumber,
    required this.cardeprovidername,
    required this.informname,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        image: const DecorationImage(
          image: AssetImage('lib/res/assets/shapelined-_JBKdviweXI-unsplash.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: mediaQuery.size.width * 0.08, top: mediaQuery.size.height * 0.020),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              informname + ":",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "\$$amount".toString(),
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(right:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    image,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: mediaQuery.size.width * 0.23),
                  Text(
                    cardednumber,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
