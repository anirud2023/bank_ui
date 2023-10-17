
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInField extends StatelessWidget {
  final String lable;
  final String hintxt;
  final double? roundSize;
  final String? error;
  final bool isConditionMet;
  final bool? isPasswordField;
   bool obsecureText;
  final Function(bool obscureVisibility)? onObscureChange;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

   TextInField({
    Key? key,
    required this.lable,
    required this.hintxt,
    required this.roundSize,
    this.error,
    this.onChanged,
    this.isConditionMet=false,
    this.validator,
    this.isPasswordField,
    this.obsecureText=false,
    this.onObscureChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;

    return Padding(
      padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
      child: TextFormField(
        onChanged: onChanged,
        validator: (value){
          value=error;
          if(value==''){
            return null;
          }else{
            return value;
          }
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obsecureText,
        decoration: InputDecoration(
          labelText: lable,
          hintText: hintxt,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(roundSize!),
              borderSide: BorderSide(
                color: (error=='')?Colors.green:Colors.red,
                width: 1.0,
              ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(roundSize!),
            borderSide: BorderSide(
              color: (error=='')?Colors.green:Colors.red,
              width: 4.0,
            ),
          ),
          suffixIcon:  isPasswordField == true
              ? GestureDetector(
            onTap: () {
              if (onObscureChange != null) {
                obsecureText = !obsecureText;
                onObscureChange!(obsecureText);
              }
            },
            child: Icon(
                obsecureText
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: obsecureText
                    ? Colors.grey
                    :Colors.blue
              ),
          )
              : null,
        ),
      ),
    );
  }
}
