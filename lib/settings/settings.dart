import 'package:flutter/material.dart';


class Settings extends StatefulWidget {

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<Settings> {
  bool isChange1 = false;
  bool isChange2= false;
  bool isChange3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Settings',
          style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification',style: TextStyle(fontSize: 18)),
              trailing: Switch(

                value: isChange1,
                activeColor: Colors.blueAccent,
                onChanged: (value) {
                  setState(() {
                    isChange1 = value;
                  });
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.download_for_offline),
              title: Text('Get High Quality',style: TextStyle(fontSize: 18)),
              trailing: Switch(
                value: isChange2,
                activeColor: Colors.blueAccent,
                onChanged: (value) {
                  setState(() {
                    isChange2 = value;
                  });
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.wifi),
              title: Text('High Quality, Wi-Fi only', style: TextStyle(fontSize: 18)),
              trailing: Switch(
                value: isChange3,
                activeColor: Colors.blue, // active color (when switch is on)
                onChanged: (value) {
                  setState(() {
                    isChange3 = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}