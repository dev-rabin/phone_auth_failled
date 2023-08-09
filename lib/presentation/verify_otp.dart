// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyOtp extends StatelessWidget {
  VerifyOtp({super.key});
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify OTP"),
      ),
      body: Column(
        children: [
          TextField(
            controller: otpController,
            decoration: InputDecoration(
              hintText: "Enter OTP",
              border: OutlineInputBorder(),
            ),
          ),
          CupertinoButton(child: Text("Verify OTP"), onPressed: () {})
        ],
      ),
    );
  }
}
