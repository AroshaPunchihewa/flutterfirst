import 'package:flutter/material.dart';
import 'package:signup/Screens/Login/components/body.dart';

import '../../navbar.dart';

class LoginScreen extends StatelessWidget {
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
