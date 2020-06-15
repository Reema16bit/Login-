import 'package:flutter/material.dart';
import 'package:train1/pages/loggin%20page.dart';
import 'package:train1/widget/Myflatbutten.dart';
import 'package:train1/widget/text%20field.dart';

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
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
                    hint: "البريد الالكتروني",
                    textInputType: TextInputType.emailAddress,
                    icon: Icon (Icons.email,color: Colors.white,),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: MyFlatButton(
                    text: "تأكيد",
                    onPressed: () {  //firebase
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> LoginPage()));
                    },
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
