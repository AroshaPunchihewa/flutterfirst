import 'package:flutter/material.dart';
import 'package:signup/Screens/Signup/components/body.dart';
import 'package:signup/navbar.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Side menu'),
        backgroundColor: Colors.white,
      ),
      body: Body(),
    );
  }
}
