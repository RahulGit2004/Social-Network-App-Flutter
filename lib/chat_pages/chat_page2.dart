import 'package:flutter/material.dart';
import 'package:proj/profile_pages/person2_profile.dart';
import 'package:proj/screens/profile_screen.dart';



class ChatPage2 extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatPage2> {
  final List<ChatMessage> _messages = [
    ChatMessage(isSentByMe: false, text: '2   more weeks🤔🤔🤔'),
    ChatMessage(isSentByMe: false, text: 'Yay, can’t wait! ❤️❤️❤️'),
    ChatMessage(isSentByMe: true, text: 'Wow, those are amazing! 🤩🤩🤩'),
    ChatMessage(isSentByMe: false, text: 'Haha, you sound funny 😂 😂 😂'),
    ChatMessage(isSentByMe: false, text: ' 😂😂😂😂😂😂😂 😂 😂'),
  ];

  final _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(isSentByMe: true, text: _messageController.text));
      });
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.blueAccent,
        title: Text('Fred Lopez',
          style: TextStyle(
              color: Colors.lime,
              fontSize: 26
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Person2Profile()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/images/pic2.jpg'),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ChatMessageItem(message: _messages[index]);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      hintText: 'Type a message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue,width: 2
                        ),
                      ),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                IconButton(
                  onPressed: _sendMessage,
                  icon: Icon(Icons.send, color: Colors.blueAccent,size: 35,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final bool isSentByMe;
  final String text;

  ChatMessage({required this.isSentByMe, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.bottomRight : Alignment.bottomLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 280),
        child: Container(
          margin: EdgeInsets.only(
            bottom: 8.0,
            left: isSentByMe ? 10.0 : 16.0,
            right: isSentByMe ? 16.0 : 30.0,
          ),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: isSentByMe ? Colors.blue[200] : Colors.grey[200],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}

class ChatMessageItem extends StatelessWidget {
  final ChatMessage message;

  ChatMessageItem({required this.message});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisAlignment: message.isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          message.isSentByMe
              ? Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('Me'),
            ),
          )
              : Container(
            margin: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('FL'),
            ),
          ),
          ChatMessage(isSentByMe: message.isSentByMe, text: message.text),
        ],
      ),
    );
  }
}