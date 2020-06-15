import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train1/pages/loggin page.dart';


void main() {
  
  runApp(App());

}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
       routes: {
        '/login' : (context) => LoginPage(),

      },
      debugShowCheckedModeBanner: false,
    );



  }


}


