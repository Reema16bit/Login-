
import 'package:flutter/material.dart';
import 'package:train1/widget/text%20field.dart';





class Addac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image:  DecorationImage(image: new AssetImage('images/WhatsApp Image 2020-05-23 at 9.57.31 PM.jpeg'),
                fit: BoxFit.cover
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(50),
                  child: MyTextField(
                    hint: 'الاسم',
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: MyTextField(
                    hint: 'التاريخ',
                  ),
                ),
                Container(
                  child: Text(
                    'الوصف',
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.0),
                    color: const Color(0x4dffffff),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
