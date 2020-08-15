import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/Screens/Login/login_screen.dart';
import 'package:login_ui/Screens/SignUp/signup_screen.dart';
import 'package:login_ui/Screens/Welcome/components/background.dart';
import 'package:login_ui/components/rounded_button.dart';
import 'package:login_ui/constraints.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This size  provide us total height and eidth of screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welome to Flutter UI",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              "assets/images/welcome.png",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "Login",
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
            RoundedButton(
              text: "Sign Up",
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
              },
            )
          ],
        ),
      ),
    );
  }
}
