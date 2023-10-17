import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Transfer",style: TextStyle(fontWeight: FontWeight.bold),),centerTitle: true,backgroundColor: Colors.white,),
        body:   Column(
          children: <Widget>[
             const SizedBox(height: 20,),
                 const CircleAvatar(radius: 60,
                 backgroundImage: AssetImage('lib/image/assets/vicky-hladynets-C8Ta0gwPbQg-unsplash.jpg'),),
                 const SizedBox(height: 16,),
                 const Text("Robert Fox",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                 const SizedBox(height: 16,),
                 const Text("HSVC-7980 6250 2657 4283",style: TextStyle(fontSize: 13.0)),
                 const SizedBox(height: 30.0,),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: "Amount",
                      hintText: "Enter the amount",
                      hintStyle:  TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
            const SizedBox(height: 15.0,),
            SizedBox(
              width: 300,
              child: FloatingActionButton.extended(onPressed: (){},
                label:const Text('Send',style: TextStyle(fontSize: 17),),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}
