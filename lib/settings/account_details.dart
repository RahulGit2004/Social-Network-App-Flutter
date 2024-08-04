import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Account Details",
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Public Info",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("First Name: ",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue
                  ),
                  ),
                  Text("Rahul",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last Name: ",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Text("Sinha",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              "Private Details",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Email Address: ",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("rahul@gmail.com",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Phone Number :",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Text("8809208891",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),

                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: Text("Save",
                  style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}
