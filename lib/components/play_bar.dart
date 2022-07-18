import 'package:flutter/material.dart';
import 'package:music_world_app/util/colors.dart';

class PlayingBar extends StatelessWidget {
  final int type;
  const PlayingBar({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ImageIcon(
          AssetImage("assets/icons/shuffle_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
        const ImageIcon(
          AssetImage("assets/icons/skip_prev_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
        type == 0 ?
        const CircleAvatar(
          backgroundColor: Color(0xFFCBFB5E),
          radius: 36,
          child: Icon(Icons.play_arrow_outlined, size: 50,),
        ) :
        Container(
          width: 73,
          height: 73,
          decoration: BoxDecoration(
            border: Border.all(
              color: textPrimaryColor,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(36.5)),
          ),
          alignment: Alignment.center,
          child: const Icon(Icons.play_arrow, size: 50, color: Color(0xFFEEEEEE),),
        ),
        const ImageIcon(
          AssetImage("assets/icons/skip_next_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
        const ImageIcon(
          AssetImage("assets/icons/loop_icon.png"),
          color: Color(0xFFEEEEEE),
        ),
      ],
    );
  }

}