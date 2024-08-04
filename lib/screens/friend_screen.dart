import 'package:flutter/material.dart';
import 'package:proj/posts_user/c_age_post.dart';
import 'package:proj/posts_user/default.dart';
import 'package:proj/posts_user/pic1_post.dart';

import '../page.dart';

class FriendScreen extends StatefulWidget {

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  @override
  void initState() {
    super.initState();
    _filteredFriends = friends;
  }
  List<Friend> _filteredFriends = [];
  final List<Friend> friends = [
    Friend(
      name: 'Coding Age',
      imageUrl: 'assets/images/cAge.jpg',
    ),
    Friend(
      name: 'Ram Charan',
      imageUrl: 'assets/images/pic1.jpeg',
    ),
    Friend(
      name: 'Jim ',
      imageUrl: 'assets/images/pic2.jpg',
    ),
    Friend(
      name: 'Fred Lopez',
      imageUrl: 'assets/images/pic3.jpg',
    ),
    Friend(
      name: 'Tracy Simmons',
      imageUrl: 'assets/images/pic4.jpg',
    ),
    Friend(
      name: 'George Lane',
      imageUrl: 'assets/images/pic5.jpeg',
    ),
    Friend(
      name: 'Taylor Rose',
      imageUrl: 'assets/images/pic6.jpg',
    ),
    Friend(
      name: 'Rosy',
      imageUrl: 'assets/images/pic7.webp',
    ),
    Friend(
      name: 'Schema',
      imageUrl: 'assets/images/pic8.jpeg',
    ),
    Friend(
      name: 'Data base',
      imageUrl: 'assets/images/pic8.jpeg',
    ),
    Friend(
      name: 'Rohan Agarwal',
      imageUrl: 'assets/images/pic1.jpeg',
    ),
    Friend(
      name: 'Rohit Sharma',
      imageUrl: 'assets/images/pic8.jpeg',
    ),
    Friend(
      name: 'Tailwind',
      imageUrl: 'assets/images/pic9.jpeg',
    ),
    Friend(
      name: 'Shane Grey',
      imageUrl: 'assets/images/pic1.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String _searchQuery = '';
    bool _isUnfriended = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Friends',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pages()));
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: "Search",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  prefixIcon: Icon(Icons.search, color: Colors.grey, size: 25),
                ),
                onChanged: (text) {
                  // Update the search query
                  setState(() {
                    _searchQuery = text;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchQuery.isEmpty ? friends.length : _filteredFriends.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 15, top: 20),
                  // Add a 10-pixel gap at the bottom
                  child: ListTile(
                    leading: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => getPostWidget(index,friends[index].imageUrl, friends[index].name)));
                      },
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: Image.asset(
                            friends[index].imageUrl,
                            fit: BoxFit.contain,
                            alignment: Alignment.center, // Add this line to center the image
                          ).image,
                        )

                    ),
                    title: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => getPostWidget(index,friends[index].imageUrl, friends[index].name )));
                      },
                      child: Text(
                        friends[index].name,
                        style: TextStyle(fontSize: 19, color: Colors.black87),
                      ),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          friends.removeAt(index);
                        });
                      },
                      child: Text('Unfriend'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 12),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue.shade900,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Friend {
  final String name;
  final String imageUrl;

  Friend({required this.name, required this.imageUrl});
}

Widget getPostWidget(int index, String imageUrl, String name) {
  switch (index) {
    case 0:
      return CAgePost(imageUrl,name);
    case 1:
      return Pic1Post(imageUrl, name);
    case 2:
      // return Pic3Post(imageUrl);
  // Add more cases as needed
    default:
      return Default(); // or return a default widget
  }
}
