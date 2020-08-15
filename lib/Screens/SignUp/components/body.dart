import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/Screens/Login/login_screen.dart';
import 'package:login_ui/Screens/SignUp/components/background.dart';
import 'package:login_ui/Screens/SignUp/components/or_divider.dart';
import 'package:login_ui/Screens/SignUp/components/social_icon.dart';
import 'package:login_ui/components/already_have_an_account_check.dart';
import 'package:login_ui/components/rounded_button.dart';
import 'package:login_ui/components/rounded_input_field.dart';
import 'package:login_ui/components/rounded_password_field.dart';

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
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/chatting-using-apps.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Sign Up",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
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
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
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
