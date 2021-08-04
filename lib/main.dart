import 'package:flutter/material.dart';
import 'package:my_first_app/login_Screen.dart';

void main(){

  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,

    );
  }


}