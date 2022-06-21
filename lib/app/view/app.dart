import 'package:flutter/material.dart';
import 'package:music_world_app/globals.dart';
import 'package:music_world_app/login/view/login_page.dart';
import 'package:music_world_app/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: theme,
    );
  }

}