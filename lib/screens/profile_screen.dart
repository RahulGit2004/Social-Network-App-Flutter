
import 'package:flutter/material.dart';
import 'package:proj/Profile_Setting.dart';
import 'package:proj/profile_pages/person2_profile.dart';
import 'package:proj/profile_pages/person3_profile.dart';
import 'package:proj/profile_pages/person4_profile.dart';
import 'package:proj/screens/home_screen.dart';

import '../notification.dart';
import '../page.dart';
import '../profile_pages/person1_profile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pages()));
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),

        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.blue.shade700,
              size: 35,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsScreen()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/my.jpg'),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Rahul Sinha', // Your name here
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                backgroundColor: Color(0xFFB3E5FC),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileSettingScreen()));
              },
              child: Text(
                'Profile Setting',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Friends',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1,
                mainAxisSpacing: 25,
                crossAxisSpacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Person1Profile()));
                    },
                    child: FriendCard(
                      image: 'assets/images/pic1.jpeg',
                      name: 'Ram Charan',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Person2Profile()));
                    },
                    child: FriendCard(
                      image: 'assets/images/pic2.jpg',
                      name: 'Jim',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Person3Profile()));
                    },
                    child: FriendCard(
                      image: 'assets/images/pic3.jpg',
                      name: 'Fred',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Person4Profile()));
                    },
                    child: FriendCard(
                      image: 'assets/images/pic4.jpg',
                      name: 'Tracy',
                    ),
                  ),
                  FriendCard(
                    image: 'assets/images/pic5.jpeg',
                    name: 'George',
                  ),
                  FriendCard(
                    image: 'assets/images/pic6.jpg',
                    name: 'Taylor',
                  ),
                  FriendCard(
                    image: 'assets/images/pic7.webp',
                    name: 'Taylor',
                  ),
                  FriendCard(
                    image: 'assets/images/pic8.jpeg',
                    name: 'Taylor',
                  ),
                  FriendCard(
                    image: 'assets/images/pic9.jpeg',
                    name: 'Aliya',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FriendCard extends StatelessWidget {
  final String image;
  final String name;

  FriendCard({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(
              image,
              height: 250,
              width: 120,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}