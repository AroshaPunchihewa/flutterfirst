import 'package:flutter/material.dart';
import 'package:signup/Screens/Login/login_screen.dart';
import 'package:signup/Screens/Signup/components/background.dart';
import 'package:signup/Screens/Signup/components/or_divider.dart';
import 'package:signup/Screens/Signup/components/social_icon.dart';
import 'package:signup/Screens/Signup/signup_screen.dart';
import 'package:signup/components/already_have_an_account_acheck.dart';
import 'package:signup/components/rounded_button.dart';
import 'package:signup/components/rounded_input_field.dart';
import 'package:signup/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/signUpphoto.jpg",
              height: size.height * 0.25,
            ),
            RoundedInputField(
              iconLogo: Icons.person,
              hintText: "Name",
              onChanged: (value) {
                // Post.objectid=value;
              },
            ),
            RoundedInputField(
              iconLogo: Icons.person_pin,
              hintText: "User Name",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedInputField(
              iconLogo: Icons.mail,
              hintText: "Email Address",
              onChanged: (value) {},
            ),
            RoundedInputField(
              iconLogo: Icons.phone_android,
              hintText: "Contact Number",
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/images/icons8-facebook-500.png",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/images/icons8-gmail-logo-500.png",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}





// class buildDivider extends StatelessWidget {
//   const buildDivider({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Divider(),
//     );
//   }
// }

