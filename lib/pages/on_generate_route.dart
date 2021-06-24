


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter30days/pages/day8.dart';
import 'package:flutter30days/pages/grid_view.dart';
import 'package:flutter30days/pages/home_page.dart';
import 'package:flutter30days/pages/list_view_builder.dart';
import 'package:flutter30days/pages/list_view_example.dart';
import 'package:flutter30days/pages/login_page.dart';
import 'package:flutter30days/pages/page_view.dart';
import 'package:flutter30days/pages/sign_up_page.dart';

class OnGenerateRoute{
  static Route<dynamic>? route(RouteSettings settings){


    final args=settings.arguments;
    if (settings.name=='/'){
      return MaterialPageRoute(
          builder: (_) => PageViewExample()
      );
    }
    else if (settings.name=='/signup') {
      return MaterialPageRoute(
          builder: (_) => SignUpPage()
      );
    }
    else if (settings.name=='/login') {
      return MaterialPageRoute(
          builder: (_) => LoginPage()
      );
    }
    else if (settings.name=='/homePage') {
      if (args is UserData)
        return MaterialPageRoute(
          builder: (_) => HomePage(userData: args,),
        );
    }
    else{
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text('error'),
          ),
          body: Center(
            child: Text('error'),
          ),
        ),
      );
    }
  }
}