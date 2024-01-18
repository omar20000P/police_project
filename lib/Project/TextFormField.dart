import 'package:flutter/material.dart';
class ATextFormField extends StatelessWidget {
  final String hintText ;
  final String? Function(String?) valid;
  final TextEditingController mycontroller ;
  const ATextFormField({super.key,required this.hintText,required this.mycontroller, required this.valid});
  Widget build(BuildContext context) {
    return TextFormField(

      controller:mycontroller ,
      validator:valid,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(


          color: Colors.grey,fontSize: 14,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 20),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }}