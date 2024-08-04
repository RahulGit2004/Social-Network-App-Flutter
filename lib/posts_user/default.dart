import 'package:flutter/material.dart';

class Default extends StatelessWidget {
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
            color: Colors.blueGrey,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("There is nothing"),
        ),
      ),
    );
  }
}
