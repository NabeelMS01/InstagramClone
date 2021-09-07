import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Pages/homePage.dart';
import 'Pages/signUpPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signUpPage',
      routes:{
        '/home': (context) =>  HomePage(),
        '/signUpPage':(context)=> SignUpPage()
      } ,
      title: "Instagram",
      theme: ThemeData(
        fontFamily: "Aveny",
          primaryColor: Colors.black,
          primaryIconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(title: TextStyle(color: Colors.black)),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black))),
      home: HomePage(),
    );
  }
}
