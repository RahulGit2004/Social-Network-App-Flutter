
import 'package:flutter/material.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:share/share.dart';

import '../page.dart';


class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    List<DiscoverItemData> dataList = [
      DiscoverItemData(
          name: 'Rahul Sinha',
          date: 'Aug 29',
          imageUrl: 'assets/images/maa.webp',
          avatarUrl: 'assets/images/my.jpg',
          comments: '50M',
          likes: '100M'),
      DiscoverItemData(
          name: 'John Doe',
          date: 'Sep 20',
          imageUrl: 'assets/images/coding2.jpg',
          avatarUrl: 'assets/images/pic2.jpg',
          comments: '1M',
          likes: '3M'),
      DiscoverItemData(
          name: 'Shiee',
          date: 'Sep 19',
          imageUrl: 'assets/images/ani.jpeg',
          avatarUrl: 'assets/images/pic6.jpg',
          comments: '1.1M',
          likes: '31M'),
      DiscoverItemData(
          name: 'Tech World',
          date: 'Sep 19',
          imageUrl: 'assets/images/ai.jpg',
          avatarUrl: 'assets/images/cAge.jpg',
          comments: '1.5M',
          likes: '51M'),
      DiscoverItemData(
          name: 'Aliya Bhatt',
          date: 'Sep 19',
          imageUrl: 'assets/images/coding3.jpg',
          avatarUrl: 'assets/images/pic9.jpeg',
          comments: '1.5M',
          likes: '51M'),
      // Add more items to the list as needed
    ];

    return Scaffold(
      appBar: AppBar(
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
          'Discover',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: dataList
              .map((data) => DiscoverItem(
                    name: data.name,
                    date: data.date,
                    imageUrl: data.imageUrl,
                    avatarUrl: data.avatarUrl,
                    comments: data.comments,
                    likes: data.likes,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class DiscoverItemData {
  final String name;
  final String date;
  final String imageUrl;
  final String avatarUrl;
  final String comments;
  final String likes;

  DiscoverItemData({
    required this.name,
    required this.date,
    required this.imageUrl,
    required this.avatarUrl,
    required this.comments,
    required this.likes,
  });
}

class DiscoverItem extends StatefulWidget {
  final String name;
  final String date;
  final String imageUrl;
  final String avatarUrl;
  final String comments;
  final String likes;

  const DiscoverItem({
    Key? key,
    required this.name,
    required this.date,
    required this.imageUrl,
    required this.avatarUrl,
    required this.comments,
    required this.likes,
  }) : super(key: key);

  @override
  State<DiscoverItem> createState() => _DiscoverItemState();
}

class _DiscoverItemState extends State<DiscoverItem> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.avatarUrl),
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    Share.share("${widget.imageUrl}");
                  },
                  icon: Icon(Icons.share),
                )
              ],
            ),
          ),
          Image.asset(
            widget.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.date,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite,
                      color: _isFavorite ? Colors.red : null),
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                ),
                Text(widget.likes),
                SizedBox(width: 16),
                Icon(Icons.comment),
                SizedBox(width: 8),
                Text(widget.comments),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
