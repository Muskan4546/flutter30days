import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60,),
            Container(
              height: 200,
                width: 200,
                child: Image.asset(
                    'assets/night.jpg'
                )
            ),
            SizedBox(height: 30,),
            Text('Login to your account', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1.5)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Username or email'
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1.5)
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password'
                ),
              ),
            ),
            SizedBox(height: 35,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              width: double.infinity,
              child: Text('Login',style: TextStyle(fontSize: 25),),
            ),
            SizedBox(height: 30,),
            Text('I Forget my password', style: TextStyle(fontSize: 24,color: Colors.blue),)
          ],
        ),
      ),
    );
  }
}
