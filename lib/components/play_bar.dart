import 'package:flutter/cupertino.dart';

class PlayingBar extends StatelessWidget {
  const PlayingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ImageIcon(
          AssetImage("assets/icons/shuffle_icon.png"),
        ),
        ImageIcon(
          AssetImage("assets/icons/skip_prev_icon.png"),
        ),
        ImageIcon(
          AssetImage("assets/icons/playing_icon.png"),
        ),
        ImageIcon(
          AssetImage("assets/icons/skip_next_icon.png"),
        ),
        ImageIcon(
          AssetImage("assets/icons/loop_icon.png"),
        ),
      ],
    );
  }

}