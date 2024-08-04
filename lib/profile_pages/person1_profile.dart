
import 'package:flutter/material.dart';
import 'package:proj/profile_pages/person2_profile.dart';
import 'package:proj/profile_pages/person3_profile.dart';

import '../notification.dart';
import '../screens/profile_screen.dart';

class Person1Profile extends StatefulWidget {

  @override
  State<Person1Profile> createState() => _Person1ProfileState();
}

class _Person1ProfileState extends State<Person1Profile> {
  int likes1 = 9999;
  int likes2 = 1478;
  int likes3 = 3258;
  bool _isFavorite = true;
  bool _isFavorite1 = false;
  bool _isFavorite2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.pop(context);
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/pic1.jpeg'),
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
                'Ram Charan', // Your name here
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
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


            GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                childAspectRatio: 1,
                mainAxisSpacing: 25,
                crossAxisSpacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                    },
                    child: FriendCard(
                      image: 'assets/images/my.jpg',
                      name: 'Rahul Sinha',
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
                  FriendCard(
                    image: 'assets/images/pic4.jpg',
                    name: 'Tracy',
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
              SizedBox(height: 20,),
            Text(
              "Posts",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.blue.shade800,
                letterSpacing: 1.5,
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationThickness: 2,
              ),
            ),

            SizedBox(height: 30,),



            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage (
                          image: AssetImage("assets/images/coding.jpeg"),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite,
                            color: _isFavorite? Colors.red : null
                        ),
                        onPressed: () {
                          setState(() {
                            _isFavorite =!_isFavorite;
                            _isFavorite? likes1++ : likes1--;
                          });
                        },
                      ),
                      Text(
                        "$likes1 likes",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage (
                          image: AssetImage("assets/images/pic9.jpeg"),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite,
                            color: _isFavorite1? Colors.red : null
                        ),
                        onPressed: () {
                          setState(() {
                            _isFavorite1 =!_isFavorite1;
                            _isFavorite1? likes2++ : likes2--;
                          });
                        },
                      ),
                      Text(
                        "$likes2 likes",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage (
                          image: AssetImage("assets/images/pic4.jpg"),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite,
                            color: _isFavorite2? Colors.red : null
                        ),
                        onPressed: () {
                          setState(() {
                            _isFavorite2 =!_isFavorite2;
                            _isFavorite2? likes3++ : likes3--;
                          });
                        },
                      ),
                      Text(
                        "$likes3 likes",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10,),
                    ],
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