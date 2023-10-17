import 'package:bank_ui/View/custom_widget/png_icons.dart';
import 'package:bank_ui/View/responsive_dashboard.dart';
import 'package:bank_ui/res/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginInPage extends StatelessWidget {
  const LoginInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:<Widget>[
            SafeArea(child: Lottie.asset('assets/animations/Animation - 1697102474437.json')),
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
                onPressed: ()=> Get.toNamed(RoutesName.creatAcc),
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
                onPressed:()=> Get.off(const DashboardSec()),
                label:const Text('  Sign in with Google',style: TextStyle(fontSize: 17),),
                backgroundColor: Colors.white,
              foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              // icon: Image.asset('lib/res/assets/google.png',height: 32,width: 32,),
                icon: PngIcons(name: PngIcons.google,height:32.0 ,width:32.0,),
                ),
            ),
            const SizedBox(height: 19.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Already a member?"),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(RoutesName.signUp);
                  },
                  child: const Text('Sign In',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                ),
              ],
            )
          ]
        ),
      )
    );
  }
}


