import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music_world_app/globals.dart';
import 'package:music_world_app/login/view/login_page.dart';
import 'package:music_world_app/navigate.dart';
import 'package:music_world_app/res/colors.dart';
import 'package:music_world_app/res/string.dart';
import 'package:music_world_app/res/text_style.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.086,),
        Input(
          icon: "assets/icons/email_icon.png",
          hintText: emailString,
        ),
        SizedBox(height: screenHeight * 0.044,),
        Input(
          icon: "assets/icons/password_icon.png",
          hintText: passWordString,
          suffixIcon: "assets/icons/show_pass_icon.png",
        ),
        SizedBox(height: screenHeight * 0.044,),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              Navigate.pushPage(context, ForgotPassPage());
            },
            child: Text(
              forgotPassString,
              style: bodyMontserratMedium2.copyWith(color: textPrimaryColor),
            ),
          )
        ),
        SizedBox(height: screenHeight * 0.0776,),
        Button(text: signInString, radius: 0),
        SizedBox(height: screenHeight * 0.165,),
        const SignInWithButtons(),
        SizedBox(height: screenHeight * 0.074,),
        RichText(
            text: TextSpan(
                text: doNotHaveAccountString,
                style: bodyRoboto2.copyWith(
                  color: textPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: signUpString,
                    style: bodyRoboto2.copyWith(
                      color: primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigate.pushPage(context, const SignUpPage());
                    },
                  )
                ]
            )


        ),
      ],
    );
  }

}

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.1182,),
        Input(icon: 'assets/icons/name_icon.png', hintText: nameString),
        SizedBox(height: screenHeight * 0.044,),
        Input(icon: 'assets/icons/email_icon.png', hintText: emailString),
        SizedBox(height: screenHeight * 0.044,),
        Input(
          icon: 'assets/icons/password_icon.png',
          hintText: passWordString,
          suffixIcon: "assets/icons/show_pass_icon.png",
        ),
        SizedBox(height: screenHeight * 0.079,),
        Button(text: signUPString, radius: 0, onPressed: () {
          Navigate.popPage(context);
        },),
        SizedBox(height: screenHeight * 0.074,),
        RichText(
            text: TextSpan(
                text: haveAccountString,
                style: bodyRoboto2.copyWith(
                  color: textPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: signINString,
                    style: bodyRoboto2.copyWith(
                      color: primaryColor,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigate.popPage(context);
                    },
                  )
                ]
            )


        )
      ],
    );
  }
}

class ForgotPassForm extends StatelessWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Input(icon: 'assets/icons/email_icon.png', hintText: emailString),
        SizedBox(height: screenHeight * 0.0788,),
        Button(text: sentString, radius: 0)
      ],
    );
  }
  
}

class SignInWithButtons extends StatelessWidget {
  const SignInWithButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: screenWidth * 0.221,
                height: screenHeight / 812,
                decoration: const BoxDecoration(
                  color: Color(0xFF8D92A3),
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Text(
                connectWithString,
                style: bodyRegular3.copyWith(
                  color: const Color(0xFF8D92A3),
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: screenWidth * 0.221,
                height: screenHeight / 812,
                decoration: const BoxDecoration(
                  color: Color(0xFF8D92A3),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: screenHeight * 0.0246,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/icons/facebook.png",
                width: screenWidth * 0.1064,
                height: screenWidth * 0.1064,
              ),
            ),
            SizedBox(width: screenWidth * 0.032,),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/icons/google-plus.png",
                width: screenWidth * 0.1064,
                height: screenWidth * 0.1064,
              ),
            ),
            SizedBox(width: screenWidth * 0.032,),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/icons/twitter.png",
                width: screenWidth * 0.1064,
                height: screenWidth * 0.1064,
              ),
            ),
          ],
        ),
      ],
    );
  }

}

class Button extends StatelessWidget {
  final String text;
  final double radius;
  final Function? onPressed;

  const Button ({
    Key? key,
    required this.text,
    required this.radius,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size.fromHeight(screenHeight * 0.0566),
          primary: const Color(0xFF20242F),
          backgroundColor: primaryColor,
          textStyle: bodyMedium1,
        ),
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        child: Text(text),
    );
  }
}

class Input extends StatelessWidget {
  final String icon;
  final String hintText;
  final String? suffixIcon;

  const Input({
    Key? key,
    required this.icon,
    required this.hintText,
    this.suffixIcon,
  }) : super(key: key)  ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: bodyMontserratMedium2.copyWith(color: neutralColor2),
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: screenWidth * 0.0644),
          child: ImageIcon(
            AssetImage(icon),
            color: neutralColor2,
          ),
        ),
        suffixIcon: suffixIcon != null
            ? Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02, right: 0),
              child: ImageIcon(
                AssetImage(suffixIcon!),
                color: neutralColor2,
              ),
            ) : const SizedBox(width: 0, height: 0),
        contentPadding: EdgeInsets.only(top: screenHeight * 0.016),
      ),
      cursorColor: primaryColor,
      style: bodyMontserratMedium2.copyWith(color: textPrimaryColor),
    );
  }


}