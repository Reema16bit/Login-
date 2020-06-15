import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final TextInputType textInputType;
  final String hint ;
  final bool isPassword ;
  final ValueChanged<String> onChange ;
  final Icon  icon   ;
  final TextAlign textAlign ;

  const MyTextField({this.textInputType, this.hint, this.isPassword, this.onChange, this.icon, this.textAlign}) ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.isPassword?? false,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold
        ),
        icon: icon,
        fillColor: Colors.white12,
          filled: true,
        contentPadding: EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        ),
      textAlign: TextAlign.right,
      );

    
  }
}
