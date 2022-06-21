import 'package:flutter/material.dart';
import 'package:music_world_app/globals.dart';
import 'package:music_world_app/login/view/login_form.dart';
import 'package:music_world_app/navigate.dart';
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

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sign_up.png"),
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
                    signUPString,
                    style: title2.copyWith(color: textPrimaryColor),
                  ),
                  const SignUpForm(),
                ],
              ),
            )
        )
      ],
    );
  }
}

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        iconTheme: IconThemeData(
          color: neutralColor1,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,),
          onPressed: () {
            Navigate.popPage(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.06, top: screenHeight * 0.0345),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  forgotPassString,
                  style: titleBold3.copyWith(
                    color: textPrimaryColor,
                  ),
                ),
                SizedBox(width: 0, height: screenHeight * 0.033,),
                SizedBox(
                  width: screenWidth * 0.63,
                  child: Text(
                    passDescription,
                    style: bodyRegular3.copyWith(
                      color: const Color(0xFF8D92A3),
                      height: 2,
                    ),
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.1067,right: screenWidth * 0.1067, top: screenHeight * 0.1416,),
            child: const ForgotPassForm(),
          ),
        ],
      )
    );
  }

}