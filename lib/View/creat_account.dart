import 'package:bank_ui/View/custom_widget/text_field.dart';
import 'package:bank_ui/View/sign_in_page.dart';
import 'package:bank_ui/vm/sign_up_new_user_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../vm/signIn_in_controller.dart';

class CreatAccount extends StatelessWidget {
  CreatAccount({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double Height = Get.height;
    double width = Get.width;
    SignUpPageController Controller = Get.put(SignUpPageController());
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(
            height: Height * .12,
          ),
          const Text(
            "Creat a new user",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Height * .09,
          ),
          Obx(
            () => TextInField(
                lable: 'First Name',
                hintxt: 'Enter Your first name',
                error: loginController.errorValidName.value,
                onChanged: loginController.isValidName,
                roundSize: 20.2),
          ),
          SizedBox(
            height: Height * .03,
          ),
          Obx(
            () => TextInField(
                lable: 'Last Name',
                hintxt: 'Enter Your last name',
                error: loginController.errorValidLastName.value,
                onChanged: loginController.isValidLastName,
                roundSize: 20.2),
          ),
          SizedBox(
            height: Height * .03,
          ),
          Obx(
            () => TextInField(
              lable: 'Email',
              hintxt: 'Enter Your email',
              roundSize: 20.2,
              error: loginController.errorEmail.value,
              onChanged: loginController.isValidEmail,
            ),
          ),
          SizedBox(
            height: Height * .03,
          ),
          Obx(
            () => TextInField(
                lable: 'Password',
                hintxt: 'Password',
                roundSize: 20.2,
                error: loginController.errorPassword.value,
                onChanged: loginController.isValidPassword,
                isPasswordField: true,
                obsecureText: Controller.isPasswordVisible.value,
                onObscureChange: (x) {
                  Controller.isPasswordVisible(x);
                }),
          ),
          SizedBox(
            height: Height * .03,
          ),
          Obx(
            () => TextInField(
                lable: 'Confirm Password',
                hintxt: 'Confirm Password',
                error: loginController.errorConfirmPass.value,
                onChanged: loginController.isConfPassSame,
                roundSize: 20.2,
                isPasswordField: true,
                obsecureText: Controller.isPasswordVisible.value,
                onObscureChange: (x) {
                  Controller.isPasswordVisible(x);
                }),
          ),
          SizedBox(
            height: Height * .05,
          ),
          SizedBox(
              width: width * .7,
              child: FloatingActionButton.extended(
                onPressed: () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: loginController.validEmail.value.toString(),
                          password:
                              loginController.validPassword.value.toString())
                      .then((value) => Get.to(()=>const LoginInPage()));
                },
                label: const Text(
                  'Creat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ))
        ]),
      )),
    );
  }
}
