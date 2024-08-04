import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      name: 'Shane Grey',
      message: 'just sent you a friend request.',
      time: '04:49 PM',
      imageUrl: 'assets/images/pic1.jpeg',
    ),
    NotificationItem(
      name: 'George Lane',
      message: 'just sent you a friend request.',
      time: '04:46 PM',
      imageUrl: 'assets/images/pic2.jpg',
    ),
    NotificationItem(
      name: 'Taylor Rose',
      message: 'just sent you a friend request.',
      time: '04:41 PM',
      imageUrl: 'assets/images/pic3.jpg',
    ),
    NotificationItem(
      name: 'Fred Lopez',
      message: 'just sent you a friend request.',
      time: '04:38 PM',
      imageUrl: 'assets/images/pic4.jpg',
    ),
    NotificationItem(
      name: 'Tracy Simmons',
      message: 'just sent you a friend request.',
      time: '04:37 PM',
      imageUrl: 'assets/images/pic5.jpeg',
    ),
    NotificationItem(
      name: 'Lena Griffin',
      message: 'just sent you a friend request.',
      time: '04:33 PM',
      imageUrl: 'assets/images/pic6.jpg',
    ),
    NotificationItem(
      name: 'Eliza Warren',
      message: 'commented on your post.',
      time: '04:27 PM',
      imageUrl: 'assets/images/pic7.webp',
    ),
    NotificationItem(
      name: 'Eliza Warren',
      message: 'just reacted to your post.',
      time: '04:27 PM',
      imageUrl: 'assets/images/pic8.jpeg',
    ),
    NotificationItem(
      name: 'Eliza Warren',
      message: 'just reacted to your post.',
      time: '04:27 PM',
      imageUrl: 'assets/images/pic1.jpeg',
    ),
    NotificationItem(
      name: 'Eliza Warren',
      message: 'just reacted to your post.',
      time: '04:27 PM',
      imageUrl: 'assets/images/pic8.jpeg',
    ),
    NotificationItem(
      name: 'Eliza Warren',
      message: 'just reacted to your post.',
      time: '04:27 PM',
      imageUrl: 'assets/images/pic5.jpeg',
    ),
    NotificationItem(
      name: 'Eliza Warren',
      message: 'just reacted to your post.',
      time: '04:27 PM',
      imageUrl: 'assets/images/pic8.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Notifications',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationItemWidget(
            notification: notifications[index],
          );
        },
      ),
    );
  }
}

class NotificationItem {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  NotificationItem({
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
  });
}

class NotificationItemWidget extends StatelessWidget {
  final NotificationItem notification;

  NotificationItemWidget({required this.notification});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 45,
        backgroundImage: AssetImage(notification.imageUrl),
      ),
      title: Text(notification.name,
          style:TextStyle(
            fontSize: 18
          ),
        ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(notification.message),
          SizedBox(height: 15),
          Text(notification.time, style: TextStyle(fontSize: 15, color: Colors.grey)),
        ],
      ),
    );
  }
}