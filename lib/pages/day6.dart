import 'package:flutter/material.dart';



class MyStatefulWidget extends StatefulWidget {

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  int value=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day 6'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('counter value $value', style: TextStyle(fontSize: 30),),
            SizedBox(height: 20,),
            RaisedButton(onPressed: () {
              setState(() {
                value+=1;
              });
            },
              child: Icon(Icons.add),),
            RaisedButton(onPressed: () {
              setState(() {
                value -= 1;
              });
            },
              child: Icon(Icons.remove),),
          ],
        ),
      ),
    );
  }
}
