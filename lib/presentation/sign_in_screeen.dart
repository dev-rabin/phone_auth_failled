// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phone Auth"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: "Enter Phone",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CupertinoButton(
                color: Colors.deepPurple,
                child: Text("Signin"),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) {
                      return HomeScreen();
                    }),
                  );
                })
          ],
        ),
      ),
    );
  }
}
