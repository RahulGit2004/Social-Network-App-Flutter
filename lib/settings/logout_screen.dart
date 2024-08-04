import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj/signin_screen.dart';

class LogoutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.exit_to_app,
                color: Colors.black54,
                size: 48,
              ),
              SizedBox(height: 16),
              Text(
                'Are you sure you want to leave?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade800,
                  padding: EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 16,
                  ),
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                ),
                child: Text('No',style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 16,
                  ),
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                ),
                child: Text('Yes',style: TextStyle(color: Colors.black87),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}