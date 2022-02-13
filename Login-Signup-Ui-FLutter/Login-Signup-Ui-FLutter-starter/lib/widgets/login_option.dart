import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login_signup_ui_starter/theme.dart';

class LogInOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //setting up the image of the buttons
        BuildButton(
          iconImage: Image(
            height: 20,
            width: 20,
            image: AssetImage('images/facebook.png'),
          ),
          textButton: 'Facebook',
        ),
        BuildButton(
          iconImage: Image(
            height: 20,
            width: 20,
            image: AssetImage('images/google.png'),
          ),
          textButton: 'Google',
        ),
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Image iconImage;
  final String textButton;
  BuildButton({@required this.iconImage, @required this.textButton});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[300])),
      child: Row(
          //here we alligning the icons at the center of the box
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconImage,
            SizedBox(
              width: 5,
            ),
            Text(textButton)
          ]),
    );
  }
}
