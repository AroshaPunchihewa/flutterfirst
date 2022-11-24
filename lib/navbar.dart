import 'package:flutter/material.dart';
import 'package:signup/Screens/Login/login_screen.dart';
import 'package:signup/Screens/Signup/signup_screen.dart';
import 'package:signup/Screens/Welcome/welcome_screen.dart';
import 'package:signup/Screens/gridview/gridview.dart';
import 'package:signup/Screens/listview/add_page.dart';
import 'package:signup/Screens/listview/student_list.dart';
import 'package:signup/constants.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: kPrimaryColor,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.receipt),
            title: Text('SignUp'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('ListView'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StudentListPage();
                  },
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.receipt),
            title: Text('Add student'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AddStudentPage();
                  },
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('GridView'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Grideviewscreen();
                  },
                ),
              )
            },
          ),
        ],
      ),
    );
  }
}
