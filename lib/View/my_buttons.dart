import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String iconimag;
  final String name;

  const MyButtons({Key?key,
    required this.iconimag,
    required this.name
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),border: Border.all(color: Colors.grey,width: 2.0),),
          child: Image.asset(iconimag,height: 30.0,width:30.0 ,),
        ),
        const SizedBox(height: 5.0,),
        Text(name),
      ],
    );
  }
}
