import 'package:flutter/material.dart';
import 'package:proj/page.dart';
import 'package:proj/screens/home_screen.dart';

class Comment1 extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<Comment1> {
  final List<ChatMessage> _messages = [
    ChatMessage(
        isSentByMe: false, text: "What's Cool Image it is ❤️❤️❤️", avtar: 'R'),
    ChatMessage(isSentByMe: false, text: 'Jai Maa Saraswati', avtar: 'A'),
    ChatMessage(
        isSentByMe: true, text: 'Wow, those are amazing! 🤩🤩🤩', avtar: 'W'),
    ChatMessage(isSentByMe: false, text: 'Too Good', avtar: 'S'),
  ];

  final _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(
          isSentByMe: true,
          text: _messageController.text,
          avtar: 'Me',
        ));
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
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pages()));
          },
        ),
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Comments',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
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
                      hintText: ' Your Comment',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                IconButton(
                  onPressed: _sendMessage,
                  icon: Icon(
                    Icons.send,
                    color: Colors.blueAccent,
                    size: 35,
                  ),
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
  final String avtar;

  ChatMessage(
      {required this.isSentByMe, required this.text, required this.avtar});

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
        mainAxisAlignment: message.isSentByMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          message.isSentByMe
              ? Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("Me"),
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text(message.avtar),
                  ),
                ),
          ChatMessage(
            isSentByMe: message.isSentByMe,
            text: message.text,
            avtar: message.avtar,
          ),
        ],
      ),
    );
  }
}
