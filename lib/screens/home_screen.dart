import 'package:flutter/material.dart';
import 'package:proj/comment_box/comment1.dart';
import 'package:proj/status/pic1_status.dart';
import 'package:proj/status/pic2_status.dart';
import 'package:share/share.dart';

class FeedPage extends StatefulWidget {
  @override
  State<FeedPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<FeedPage> {
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
        imageUrl: 'assets/images/pic4.jpg',
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
        avatarUrl: 'assets/images/pic9.jpeg',
        comments: '1.5M',
        likes: '51M'),
    // Add more items to the list as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Feed',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Handle edit icon tap
            },
          ),
        ],
      ),
      body: Column(
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pic1Status()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/pic1.jpeg'),
                          foregroundColor: Colors.blue, // add border color
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pic2Status()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/my.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/pic3.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/pic4.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/pic5.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/pic6.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/pic7.webp'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/pic8.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.lightBlue),
                        ),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/pic9.jpeg'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
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
          ),
        ],
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
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Comment1()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.comment),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.comments),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
