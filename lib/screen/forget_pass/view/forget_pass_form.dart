import 'package:flutter/cupertino.dart';

import '../../../components/Button.dart';
import '../../../components/input_field.dart';
import '../../../util/globals.dart';
import '../../../util/string.dart';

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