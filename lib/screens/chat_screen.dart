import 'package:flutter/material.dart';
import 'package:proj/chat_pages/chat_page1.dart';
import 'package:proj/chat_pages/chat_page2.dart';
import 'package:proj/profile_pages/person1_profile.dart';

import '../page.dart';
import '../profile_pages/person2_profile.dart';
import '../profile_pages/person3_profile.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pages()));
          },
        ),
        title: Text(
          "Chat",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body:
      // SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child:
      Column(
          children: [
            Container(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Person1Profile()));

                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/pic1.jpeg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Person2Profile()));

                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/pic2.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Person3Profile()));

                        },
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/pic3.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/pic4.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/pic5.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/pic6.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/pic7.webp'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/pic8.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/pic9.jpeg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
             Container(
               height: 1,
               color: Colors.grey,
             ),
            SizedBox(height: 15,),
             Expanded(
               child: SingleChildScrollView(
                 child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage1()));
                          },
                          child:
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 36,
                                backgroundImage: AssetImage('assets/images/my.jpg'),
                              ),
                              SizedBox(width: 16), // Add spacing between the image and text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                children: [
                                  Text(
                                    "Rahul Sinha",
                                    style: TextStyle(
                                      fontSize: 23,
                                    ),
                                  ),
                                  SizedBox(height: 4), // Add spacing between the name and comment
                                  Text(
                                    "Well tried to clone this app",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
               
               
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage2()));
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 36,
                                backgroundImage: AssetImage('assets/images/pic2.jpg'),
                              ),
                              SizedBox(width: 16), // Add spacing between the image and text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                                children: [
                                  Text(
                                    "Fred Lopez",
                                    style: TextStyle(
                                      fontSize: 23,
                                    ),
                                  ),
                                  SizedBox(height: 4), // Add spacing between the name and comment
                                  Text(
                                    "Hello bro !!",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage('assets/images/pic3.jpg'),
                            ),
                            SizedBox(width: 16), // Add spacing between the image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Tylor Rose",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 4), // Add spacing between the name and comment
                                Text(
                                  "How to do this you are amazing",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage('assets/images/pic4.jpg'),
                            ),
                            SizedBox(width: 16), // Add spacing between the image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Jim Crater",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 4), // Add spacing between the name and comment
                                Text(
                                  "what to do.....",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage('assets/images/pic5.jpeg'),
                            ),
                            SizedBox(width: 16), // Add spacing between the image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Tracy",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 4), // Add spacing between the name and comment
                                Text(
                                  "All good ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage('assets/images/pic6.jpg'),
                            ),
                            SizedBox(width: 16), // Add spacing between the image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Amativ",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 4), // Add spacing between the name and comment
                                Text(
                                  "Editing is well",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage('assets/images/pic7.webp'),
                            ),
                            SizedBox(width: 16), // Add spacing between the image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Lizard",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 4), // Add spacing between the name and comment
                                Text(
                                  "Flutter code",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage('assets/images/pic8.jpeg'),
                            ),
                            SizedBox(width: 16), // Add spacing between the image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Corona",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 4), // Add spacing between the name and comment
                                Text(
                                  "Rough",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundImage: AssetImage('assets/images/pic9.jpeg'),
                            ),
                            SizedBox(width: 16), // Add spacing between the image and text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                              children: [
                                Text(
                                  "Tracy Simmons",
                                  style: TextStyle(
                                    fontSize: 23,
                                  ),
                                ),
                                SizedBox(height: 4), // Add spacing between the name and comment
                                Text(
                                  "It does not suppor videos",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
               
                      ],
                    ),
               ),
             ),
              ],
            ),
      // ),
    );
  }
}
