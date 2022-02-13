import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/login.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:login_signup_ui_starter/widgets/login_option.dart';
import 'package:login_signup_ui_starter/widgets/primary_button.dart';

import '../widgets/checkbox.dart';
import '../widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Create account section
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: kDefaultPadding,
            child: Text(
              'Create Account',
              style: titleText,
            ),
          ),
          //Already resistered section
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: kDefaultPadding,
            child: Row(
              
              children: [
                Text(
                  'Already a member?',
                  style: subTitle,
                ),
                SizedBox(
                  width: 5,
                ),
                //going back to the log in screen
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogInScreen()));
                  },
                  child: Text(
                    'Log In',
                    style: textButton.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                    ),
                  ),
                )
              ],
            ),
          ),
          //fields for name/email etc contained in the signup_form widget
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: kDefaultPadding,
            child: SignUpForm(),
          ),
          //tick boxes set up in the checkbox widget
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: kDefaultPadding,
            child: CheckBox('Agree to term and Conditions.'),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: kDefaultPadding,
            child: CheckBox('I am 18 years old or older.'),
          ),
          //signup button
          SizedBox(height: 20,),
          Padding(
            padding: kDefaultPadding,
            child: PrimaryButton(buttonText: 'Sign Up'),
          ),
          SizedBox(
            height: 20,
            ),
          Padding(
            padding: kDefaultPadding,
            child: Text(
              'Or log in with:', 
              style: subTitle.copyWith(color: kBlackColor,)

            ),
          ),
          SizedBox(
            height: 20,
            ),
            //adding the social media boxes
          Padding(
            padding: kDefaultPadding,
            child: LogInOption(),
          ), 
          SizedBox(
            height: 20,
          )
          ],
      )),
    );
  }
}
