import 'package:flutter/material.dart';
import 'package:signup/Screens/Login/login_screen.dart';
import 'package:signup/Screens/Signup/signup_screen.dart';
import 'package:signup/Screens/Welcome/components/background.dart';
import 'package:signup/components/rounded_button.dart';
import 'package:signup/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //total h & w of our sceen
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EVOCODE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Image.asset(
              "assets/images/welcomephoto.jpg",
              height: size.height * 0.55,
            ),
            RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                }),
            RoundedButton(
                text: "SIGNUP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
