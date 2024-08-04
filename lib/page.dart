import 'package:flutter/material.dart';
import 'package:proj/screens/chat_screen.dart';
import 'package:proj/screens/friend_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'package:proj/screens/search_screen.dart';
import 'package:proj/signin_screen.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int _currentIndex = 0;
   List<Widget> tabs = [
     FeedPage(),
     SearchScreen(),
     ChatScreen(),
     FriendScreen(),
     ProfileScreen(),
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_ios_new),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.black54,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "feed"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "discover"),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "friends"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

        },

      ),

    );
  }
}
