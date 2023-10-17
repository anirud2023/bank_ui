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
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), image:  const DecorationImage(image: AssetImage('lib/image/assets/shapelined-_JBKdviweXI-unsplash.jpg',),fit:BoxFit.cover),),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 21.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(informname + ":",
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text(
                "\$$amount".toString(),
                style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  Image.asset(
                    image,
                    height: 50.0,
                    width: 50.0,
                  ),
                  const SizedBox(width: 100.0,),
                  Text(cardednumber,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                ],
              ),
            ]),
      ),
    );
  }
}
