import 'package:bank_ui/View/custom_widget/text_field.dart';
import 'package:bank_ui/View/responsive_dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../vm/signIn_in_controller.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;

    SignUpPageController Controller = Get.put(SignUpPageController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: height * .3),
          child: Column(children: <Widget>[
            const Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * .030,
            ),
            TextInField(
              lable: 'Email',
              hintxt: 'Enter Your Email',
              roundSize: 20.2,
              onChanged: Controller.isValidEmailName,
            ),
            SizedBox(
              height: height * .030,
            ),
            Obx(
              () => TextInField(
                  lable: 'Password',
                  hintxt: 'Enter Your Password',
                  roundSize: 20.2,
                  onChanged: Controller.isValidPassword,
                  isPasswordField: true,
                  obsecureText: Controller.isPasswordVisible.value,
                  onObscureChange: (x) {
                    Controller.isPasswordVisible(x);
                  }),
            ),
            SizedBox(
              height: height * .020,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: width * 0.055),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .022,
            ),
            SizedBox(
                width: width * .7,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: Controller.emailValid.value.toString(),
                            password: Controller.passwordValid.value.toString())
                        .then((value) => Get.to(const DashboardSec()));
                    debugPrint(Controller.passwordValid.value.toString());
                    debugPrint(Controller.emailValid.value.toString());
                  },
                  label: const Text(
                    'Login',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
