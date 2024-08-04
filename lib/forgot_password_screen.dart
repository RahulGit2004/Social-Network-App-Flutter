import 'package:flutter/material.dart';
import 'package:proj/sucess_pages/success_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Enter your email address to reset your password.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.blue.shade800,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontSize: 22,
                    color: Colors.blue.shade800
                  ),
                  // border: OutlineInputBorder(
                  // ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue.shade800,width: 2)
                  )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
                onSaved: (value) => _email = value,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Send reset password email to _email
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessScreen()));

                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  'Reset Link ',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
