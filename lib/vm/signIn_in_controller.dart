import 'package:get/get.dart';

class SignUpPageController extends GetxController{
  RxBool isPasswordVisible = true.obs;
  RxString emailValid="".obs;
  RxString passwordValid ="".obs;

  void togglePasswordVisibility() {
    isPasswordVisible.toggle();
  }

  void isValidEmailName(String value){
    emailValid.value=value;
  }

  void isValidPassword(String value){
    passwordValid.value=value;
  }






}