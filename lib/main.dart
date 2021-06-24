import 'package:flutter/material.dart';
import 'package:flutter30days/pages/day3.dart';
import 'package:flutter30days/pages/day4.dart';
import 'package:flutter30days/pages/day5.dart';
import 'package:flutter30days/pages/day6.dart';
import 'package:flutter30days/pages/day7.dart';
import 'package:flutter30days/pages/home_page.dart';
import 'package:flutter30days/pages/image_page.dart';
import 'package:flutter30days/pages/login_page.dart';
import 'package:flutter30days/pages/sign_up_page.dart';
import 'package:flutter30days/pages/tik_tok_ui_stack.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      themeMode : ThemeMode.light,
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/day7',
      routes: {
        '/':(context) => HomePage(),
        '/login':(context) => LoginPage(),
        '/signUpPage':(context) => SignUpPage(),
        '/day7':(context) => Day7()
      },
      debugShowCheckedModeBanner: false,
      title: 'flutter 30 days challenge',
      // home: MyStateFullWidget()
    );
  }
}
