import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {

  final String text ;
  final VoidCallback onPressed;

  const MyFlatButton( {this.text, this.onPressed}) ;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: Colors.white30,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),



      padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    );
  }
}
