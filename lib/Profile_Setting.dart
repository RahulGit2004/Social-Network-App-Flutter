import 'package:flutter/material.dart';
import 'package:proj/settings/account_details.dart';
import 'package:proj/settings/contact_us.dart';
import 'package:proj/settings/logout_screen.dart';
import 'package:proj/settings/profile_setting.dart';
import 'package:proj/settings/settings.dart';

class ProfileSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Editprofile()));
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                child: Text(
                  "Profile Settings",
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AccountDetails()));
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                child: Text(
                  "Account Details",
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Settings()));
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                ),
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 22, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogoutScreen()));
                },
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 22, color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
