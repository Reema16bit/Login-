import 'package:flutter/material.dart';
import 'package:train1/pages/verify.dart';
import 'package:train1/widget/Myflatbutten.dart';
import 'package:train1/widget/text%20field.dart';




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _ID = "" ;
  String _password = "" ;
  final _scaffoldKey = GlobalKey <ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image:  DecorationImage(image: new AssetImage('images/WhatsApp Image 2020-05-23 at 9.57.30 PM.jpeg'),
                  fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                    child: MyTextField(
                      hint: "البريد الالكتروني",
                      textInputType: TextInputType.emailAddress,
                      icon: Icon(Icons.email,color: Colors.white,),
                      onChange: (value) {
                        setState(() {
                          _ID = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: MyTextField(
                      hint: "كلمة السر",
                      isPassword: true,
                      icon: Icon(Icons.https,color: Colors.white,),
                      onChange: (value) {
                        setState(() {
                          _password = value;
                        });
                      },

                    ),
                  ),
                  Transform.translate(
                    offset: Offset(150,1),
                    child: Container(

                          child: FlatButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> Verify()));
                            },
                            child: Text(
                              "نسيت كلمة المرور؟",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(15,12),
                    child: Container(
                      child: MyFlatButton(
                        text: "تسجيل الدخول",
                        onPressed: () {
                        print('f');   //change it with firebase + calling the method that we will create for authintication
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

      ),
    );









}}
