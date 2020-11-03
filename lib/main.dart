import 'package:flutter/material.dart';
import 'package:loginui/login.dart';
void main() {
  runApp(MainPage());
}
 class MainPage extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "login/Registration",
       theme: ThemeData(
         primarySwatch: Colors.red,
       ),
       home: Login(),
     );
   }
 }





