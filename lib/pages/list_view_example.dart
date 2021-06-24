import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';



class ListViewExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        reverse: true,
        physics: ScrollPhysics(),
        children: <Widget>[
          ListTile(trailing: Icon(FontAwesome.heart),leading: Container(width: 40,height: 50,decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),),
            title: Text('Heading Text'),subtitle: Text('sub heading'),
          ),
          ListTile(trailing: Icon(FontAwesome.heart),leading: Container(width: 40,height: 50,decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),),
            title: Text('eTechviral'),subtitle: Text('Hi! there i`m using this app'),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('heading widget or simple text'),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: 40,height: 80,decoration: BoxDecoration(
              color: Colors.red,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet augue et sem sodales posuere. Integer suscipit at nisi id vestibulum. Phasellus varius risus quis ex fermentum tempor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquet arcu nec cursus pretium. Vivamus bibendum justo in mi vehicula vulputate. Quisque quis porta nunc, et egestas magna. Etiam dignissim malesuada purus, accumsan mattis dui varius eget. Vivamus eget lectus sapien.',
              style: TextStyle(fontSize: 25),),
          )
        ],
      ),
    );
  }
}
