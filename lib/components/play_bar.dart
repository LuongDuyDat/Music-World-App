import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_world_app/util/colors.dart';

class PlayingBar extends StatelessWidget {
  const PlayingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ImageIcon(
          AssetImage("assets/icons/shuffle_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
        ImageIcon(
          AssetImage("assets/icons/skip_prev_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
        CircleAvatar(
          backgroundColor: Color(0xFFCBFB5E),
          radius: 36,
          child: Icon(Icons.play_arrow_outlined, size: 50,),
        ),
        ImageIcon(
          AssetImage("assets/icons/skip_next_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
        ImageIcon(
          AssetImage("assets/icons/loop_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
      ],
    );
  }

}