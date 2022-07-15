import 'package:flutter/material.dart';
import 'package:music_world_app/components/play_bar.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/globals.dart';
import 'package:music_world_app/util/text_style.dart';


class SongView2 extends StatefulWidget {
  const SongView2({Key? key}) : super(key: key);

  @override
  _SongView1State createState() => _SongView1State();
}

class _SongView1State extends State<SongView2> {

  double _currentSlideValue = 0;

  String convertSecondtoMinutes(double s) {
    String result = "";
    int m = (s / 60).truncate();
    result += m.toString();
    int se = (s - m * 60).round();
    result += ":";
    if (se < 10) {
      result += "0";
    }
    result += se.toString();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 0.062 * screenHeight,),
        Image.asset("assets/images/song_avatar.png"),
        SizedBox(height: 0.027 * screenHeight,),
        Text(
          "Come to me",
          style: title2.copyWith(color: textPrimaryColor),
        ),
        Text(
          "One Republic",
          style: subHeadline1.copyWith(color: textPrimaryColor),
        ),
        SizedBox(height: 0.0246 * screenHeight,),
        SizedBox(
          width: 0.64 * screenWidth,
          child: Text(
            "It is a long established fact that a reader",
            style: lyric.copyWith(
              color: primaryColor,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 0.0332 * screenHeight,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.138 * screenWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ImageIcon(
                const AssetImage("assets/icons/share_icon.png"),
                color: neutralColor1,
                size: 20,
              ),
              ImageIcon(
                const AssetImage("assets/icons/add_playlist_icon.png"),
                color: neutralColor1,
                size: 20,
              ),
              ImageIcon(
                const AssetImage("assets/icons/favorite_icon.png"),
                color: neutralColor1,
                size: 20,
              ),
              ImageIcon(
                const AssetImage("assets/icons/download_icon.png"),
                color: neutralColor1,
                size: 20,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.01 * screenWidth, 0.025 * screenHeight, 0.01 * screenWidth, 0),
          child: Slider(
            value: _currentSlideValue,
            max: 185,
            divisions: 185,
            onChanged: (double value) {
              setState(() {
                _currentSlideValue = value;
              });
            },
            thumbColor: primaryColor,
            activeColor: primaryColor,
            inactiveColor: neutralColor2,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0613 * screenWidth),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    convertSecondtoMinutes(_currentSlideValue),
                    style: lyric.copyWith(color: textPrimaryColor),
                  ),
                  Text(
                    convertSecondtoMinutes(185),
                    style: lyric.copyWith(color: textPrimaryColor),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.0246,),
              const PlayingBar(),
            ],
          )
        ),
      ],
    );
  }

}

