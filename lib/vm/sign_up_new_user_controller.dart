import 'package:get/get.dart';

class LoginController extends GetxController{
  RxString validEmail="".obs;
  RxString validPassword ="".obs;
  RxString validName=''.obs;
  RxString validLastName=''.obs;
  RxString validConfirmPass=''.obs;

  final RxString errorEmail = ''.obs;
  final RxString errorPassword = ''.obs;
  final RxString errorConfirmPass=''.obs;
  final RxString errorValidName=''.obs;
  final RxString errorValidLastName=''.obs;



  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

 void isValidEmail(String value){
   validEmail.value = value;
  if (value.isEmpty) {
     errorEmail.value = 'Email is required';
   } else if (!emailRegex.hasMatch(value)) {
     errorEmail.value = 'Invalid email format';
   } else {
     errorEmail.value='';
   }
 }

  void isValidName(String value){
   validName.value=value;
   if(validName.isEmpty){
     errorValidName.value='Enter Your Name';
   }else{
     errorValidName.value='';
   }
 }

 void isValidLastName(String value){
   validLastName.value=value;
   if(validLastName.isEmpty){
     errorValidLastName.value='Enter Your Last Name';
   }else {
     errorValidLastName.value='';
   }
 }

 void isValidPassword(String value){

   validPassword.value = value;
   if(value.toString().length>=4) {
     if (value.isEmpty) {
       errorPassword.value = 'Password is required';
     } else if (value.length < 8) {
       errorPassword.value = 'Password must be at least 8 characters';
     } else if (!value.contains(RegExp(r'[A-Z]'))) {
       errorPassword.value =
       'Password must contain at least one uppercase letter';
     } else if (!value.contains(RegExp(r'[a-z]'))) {
       errorPassword.value =
       'Password must contain at least one lowercase letter';
     } else if (!value.contains(RegExp(r'[0-9]'))) {
       errorPassword.value = 'Password must contain at least one digit';
     } else {
       errorPassword.value = '';
     }
   }else{
     errorPassword.value='';
   }
 }

 void isConfPassSame(String value){
   if(validPassword.value==validConfirmPass.value){
     errorConfirmPass.value='Enter the same same Password as above';
   }else{
     errorConfirmPass.value='';
   }
 }


}