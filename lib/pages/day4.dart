import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';


class Day4 extends StatelessWidget {
int age = 10;
String name = 'my age is :';
double salary = 30000.53154;
bool isLight = false;
num value = 24354.56457;
var digit = 'tdtrdftgf';
final x=23423;
static const double pi = 3.14;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Day4'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center (
              child: Icon(
                FontAwesome.amazon,
                size: 100,color:
              Colors.deepOrangeAccent,
              ),
          ),
          Text('$name $age, salary $salary, isLight $isLight'),
          Container(height: 40,width: 80,color: Colors.red,),
          SizedBox(height: 30,),
          Row(
            children: [
              Container(height: 40,width: 80,color: Colors.red,),
              Expanded(child: Container(height: 40,width: 80,color: Colors.purple,)),
            ],
          ),
          Expanded(child: Container(height: 40,width: 80,color: Colors.red,)),

        ],
      ),
    );
  }
}
