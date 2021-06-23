import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Day3  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 180,
            color: Colors.red,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.orange,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.purple,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180,
                width: 180,
                color: Colors.blue,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
              Container(
                height: 80,
                width: 80,
                color: Colors.deepOrangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
