import 'package:bank_ui/View/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginInPage extends StatefulWidget {
  const LoginInPage({super.key});

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends State<LoginInPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children:<Widget>[
          SafeArea(child: Lottie.asset('lib/image/assets/Animation - 1697102474437.json')),
          const SizedBox(height: 8.0,),
          const Padding(
            padding: EdgeInsets.only(left:15.0),
            child:  Text("Bank on-the-go with our App",style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 10.0,),
          const Padding(
            padding: EdgeInsets.only(left:15.0),
            child:  Text("Manage your finance anytime,anywhere with our online banking app ",
              style: TextStyle(fontSize: 18.0,color: Colors.black38),textAlign: TextAlign.center,),
          ),
          const SizedBox(height: 20.0,),
          SizedBox(
            width: 300,
            child: FloatingActionButton.extended(
              heroTag:"Sigin by account",
              onPressed: ()=> Get.off(const Dashboard()),
              label:const Text('Creat an Account', style: TextStyle(fontSize: 17),),
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              foregroundColor: Colors.white,),
          ),
          const SizedBox(height: 15.0,),
          SizedBox(
            width: 300,
            child: FloatingActionButton.extended(
              heroTag:"Sigin by google",
              onPressed:()=> Get.off(const Dashboard()),
              label:const Text('  Sign in with Google',style: TextStyle(fontSize: 17),),
              backgroundColor: Colors.white,
            foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            icon: Image.asset('lib/image/assets/google.png',height: 32,width: 32,),),
          ),
          const SizedBox(height: 19.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Already a member?"),
              GestureDetector(
                onTap: (){},
                child: const Text('Sign In',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
              ),
            ],
          )
        ]
      )
    );
  }
}


