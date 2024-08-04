import 'package:flutter/material.dart';
import 'package:proj/screens/profile_screen.dart';

class Success2 extends StatefulWidget {

  @override
  State<Success2> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<Success2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150, // specify the width
                height: 150, // specify the height
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/s.jpg'), // replace with your image path
                    fit: BoxFit.cover, // adjust the image to fit the container
                  ),
                ),
              ),
              Text("Success!",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.green
                ),
              ),
            ],
          ),
        ),
      ),


    );

  }
}



