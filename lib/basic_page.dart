import 'package:flutter/material.dart';
import 'package:proj/signin_screen.dart';
import 'package:proj/signup_screen.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'VIBE',
              style: TextStyle(
                fontSize: 75.0,
                color: Colors.blue.shade800,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Welcome to Vibe',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Own your vibe, own your story...",
              style: TextStyle(),
            ),
            SizedBox(height: 75.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignInScreen())
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade800,
                padding: EdgeInsets.symmetric(horizontal: 83, vertical: 15.0),
                textStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen())
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15.0),
                textStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
