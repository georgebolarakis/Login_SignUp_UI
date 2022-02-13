import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/screens/login.dart';
import 'package:login_signup_ui_starter/theme.dart';
import 'package:login_signup_ui_starter/widgets/primary_button.dart';

import '../widgets/reset_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 200,
          ),
          Text(
            'Reset Password',
            style: titleText,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Please enter our email address',
            style: subTitle.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          //is handled by the resetform widget
          ResetForm(),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ));
              },
              child: PrimaryButton(buttonText: 'Reset Password')),
        ]),
      ),
    );
  }
}
