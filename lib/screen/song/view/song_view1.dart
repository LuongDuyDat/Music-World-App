import 'package:flutter/material.dart';
import 'package:music_world_app/screen/song/view/song_page.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/globals.dart';
import 'package:music_world_app/util/string.dart';
import 'package:music_world_app/util/text_style.dart';

import '../../../components/song_tile.dart';
import '../../../util/navigate.dart';

class SongView1 extends StatelessWidget {
  const SongView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0.064 * screenWidth, 0.24 * screenHeight, 0.17 * screenWidth, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Come to me",
                style: title2.copyWith(color: textPrimaryColor),
              ),
              const SizedBox(height: 4,),
              Text(
                "Shawn Mendes",
                style: subHeadline1.copyWith(color: textPrimaryColor),
              ),
              SizedBox(height: 0.0345 * screenHeight,),
              RichText(
                text: TextSpan(
                  text: "It is a long established fact that a reader will be distracted by the readable content of "
                      "a page when looking at its layout. The point of using Lorem Ipsum is that it",
                  style: lyric.copyWith(color: textPrimaryColor,),
                  children: [
                    TextSpan(
                        text: ' ',
                        style: lyric,
                    ),
                    TextSpan(
                      text: showMoreString,
                      style: lyric.copyWith(color: neutralColor2, decoration: TextDecoration.underline,),
                    ),
                  ]
                ),
              ),
              SizedBox(height: 0.044 * screenHeight),
              Divider(
                color: neutralColor2,
              ),
              SizedBox(height: 0.044 * screenHeight),
              Text(
                suggestionsString,
                style: headlineBold1.copyWith(color: textPrimaryColor),
              ),
              SizedBox(
                height: 0.24 * screenHeight,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    InkWell(
                      child: const SongListTile(
                        leadingAsset: "assets/images/song1.png",
                        songName: "Nice For What",
                        artist: "Avinci John",
                        number: 1,
                      ),
                      onTap: () {
                        Navigate.pushPage(context, SongPage());
                      },
                    ),
                    const SongListTile(
                      leadingAsset: "assets/images/song2.png",
                      songName: "Where can I get some ?",
                      artist: "Arian Grande",
                      number: 2,
                    ),
                    const SongListTile(
                      leadingAsset: "assets/images/song3.png",
                      songName: "Why do we use it ?",
                      artist: "Alan Walker",
                      number: 3,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

}