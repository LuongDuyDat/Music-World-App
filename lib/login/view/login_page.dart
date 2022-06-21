import 'package:flutter/material.dart';
import 'package:music_world_app/globals.dart';
import 'package:music_world_app/login/view/login_form.dart';
import 'package:music_world_app/res/colors.dart';
import 'package:music_world_app/res/string.dart';

import '../../res/text_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/sign_in.png"),
              fit: BoxFit.cover,
            )
          ),
        ),
        Scaffold(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          body: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.1067, right: screenWidth * 0.1067, top: screenHeight * 0.127),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    signInString,
                    style: title2.copyWith(color: textPrimaryColor),
                  ),
                  const LoginForm(),
                ],
              ),
          )
        )
      ],
    );
  }
}