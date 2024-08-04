import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Pic1Status extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Pic1Status> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Status",
          style: TextStyle(
              color: Colors.white,
              fontSize: 28
          ),
        ),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ImageSlideshow(
                width: double.infinity,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Image.asset(
                    'assets/images/st1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/my.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
                onPageChanged: (value) {
                  print('Page changed: $value');
                },
                autoPlayInterval: 4000,
              ),
            ),
        ],
      ),
    );
  }
}