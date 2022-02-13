import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/reset_password.dart';
import 'package:login_signup_ui_starter/screens/signup.dart';
import 'package:login_signup_ui_starter/theme.dart';

import '../widgets/login_form.dart';
import '../widgets/login_option.dart';
import '../widgets/primary_button.dart';

//here is the welcome back screen
class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: kDefaultPadding,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 120,
          ),
          Text(
            'Welcome Back',
            style: titleText,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'New to this App?',
                style: subTitle,
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: textButton.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          LogInForm(),
          //for the forgot password section
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResetPasswordScreen()));
            },
            child: Text(
              'Forgot password?',
              style: TextStyle(
                color: kZambeziColor,
                fontSize: 14,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
              ),
            ),
          ),
          //for the button
          SizedBox(
            height: 20,
          ),
          //setting up the text in the primary button
          PrimaryButton(
            buttonText: 'Log In',
          ),
          //or log in with section
          SizedBox(
            height: 20,
          ),
          Text(
            'Or log in with:',
            style: subTitle.copyWith(color: kBlackColor),
          ),
          //the social media icon section
          SizedBox(
            height: 20,
          ),
          LogInOption(),
        ]),
      ),
    ));
  }
}
