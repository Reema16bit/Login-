import 'package:flutter/material.dart';

class Splachpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image (
              image: AssetImage('images/WhatsApp Image 2020-05-23 at 9.57.30 PM.jpeg'),
            )
          ],
        ),
      ),
    );



}}