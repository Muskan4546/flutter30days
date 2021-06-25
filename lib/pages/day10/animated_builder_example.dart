import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';




class AnimatedBuilderExample extends StatefulWidget  {

  @override
  _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample> with SingleTickerProviderStateMixin {

  late Animation<double> _animation;

  late AnimationController _animationController;

  @override

  void initState() {
    _animationController=AnimationController(
      duration: Duration(milliseconds: 1500), vsync: this,
    );
    final animationCurve = CurvedAnimation(curve: Curves.easeInOut,reverseCurve: Curves.easeIn, parent: _animationController);
    _animation=Tween<double> (begin: 2,end: 8).animate(animationCurve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        }else if (status == AnimationStatus.dismissed){
          _animationController.forward();
        }
      });
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(90.0),
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context,child) {
                      return Transform.scale(
                       scale: _animation.value,
                        child: Center(
                          child: Icon(FontAwesome.heart,size: 8,color: Colors.green,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(90.0),
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context,child) {
                      return Transform.scale(
                        scale: _animation.value,
                        child: Center(
                          child: Icon(FontAwesome.heart,size: 8,color: Colors.green,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(90.0),
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context,child) {
                      return Transform.scale(
                        scale: _animation.value,
                        child: Center(
                          child: Icon(FontAwesome.heart,size: 8,color: Colors.green,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(90.0),
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context,child) {
                      return Transform.translate(
                        offset: Offset(0,_animation.value),
                        child: Center(
                          child: Icon(FontAwesome.heart,size: 20,),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
