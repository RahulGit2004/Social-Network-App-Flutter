import 'package:flutter/material.dart';

class CAgePost extends StatefulWidget {
  final String img_url;
  final String name;

  CAgePost(this.img_url, this.name);

  @override
  State<CAgePost> createState() => _Pic1PostState();
}

class _Pic1PostState extends State<CAgePost> {
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
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body:
      Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(widget.img_url),
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                    letterSpacing: 2, // Add some space between letters
                    wordSpacing: 3, // Add some space between words
                    backgroundColor: Colors.blueGrey.shade200.withOpacity(0.5), // Add a background color
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Posts",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
              letterSpacing: 1.5,
              wordSpacing: 2,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationThickness: 2,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Column(
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
                    SizedBox(height: 25,),
                    Column(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage (
                                image: AssetImage("assets/images/coding2.jpg"),
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
                    SizedBox(height: 25,),
                    Column(
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage (
                                image: AssetImage("assets/images/coding3.jpg"),
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}