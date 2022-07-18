import 'package:flutter/material.dart';
import 'package:music_world_app/components/play_bar.dart';
import 'package:music_world_app/screen/singer/view/singer_info.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/globals.dart';
import 'package:music_world_app/util/navigate.dart';
import 'package:music_world_app/util/string.dart';
import 'package:music_world_app/util/text_style.dart';

import '../../../components/song_tile.dart';
import '../../song/view/song_page.dart';

class Topic extends StatelessWidget {
  final String type;
  const Topic({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  type == "Playlist" ?
                  "assets/images/topic_background.png" : "assets/images/album_background.png",),
                fit: BoxFit.cover,
              )
          ),
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigate.popPage(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.064 * screenWidth, 0.0985 * screenHeight, 0.064 * screenWidth, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PlayingBar(type: 1),
                  SizedBox(height: screenHeight * 0.1638,),
                  Text(
                    type == "Playlist" ? "Hip Hop" : "Rescue Me",
                    style: title2.copyWith(color: textPrimaryColor),
                  ),
                  const SizedBox(height: 4,),
                  GestureDetector(
                      onTap: () {
                        if (type != "Playlist") {
                          Navigate.pushPage(context, const SingerInfo());
                        }
                      },
                      child: Text(
                        type == "Playlist" ? playlistString : "One Republic",
                        style: subHeadline1.copyWith(color: textPrimaryColor),
                      ),
                  ),
                  SizedBox(height: 0.032 * screenHeight,),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page"
                        " when looking at its layout. The point of using Lorem Ipsum is that it",
                    style: lyric.copyWith(color: textPrimaryColor),
                  ),
                  SizedBox(height: 0.044 * screenHeight,),
                  Divider(color: neutralColor2, thickness: 1.5,),
                  ListView(
                    shrinkWrap: true,
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
                          Navigate.pushPage(context, const SongPage());
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
                      const SongListTile(
                        leadingAsset: "assets/images/song4.png",
                        songName: "Fall Out Boys",
                        artist: "Avinci John",
                        number: 4,
                      ),
                      const SongListTile(
                        leadingAsset: "assets/images/song2.png",
                        songName: "Where can I get some ?",
                        artist: "Arian Grande",
                        number: 5,
                      ),
                      const SongListTile(
                        leadingAsset: "assets/images/song3.png",
                        songName: "Why do we use it ?",
                        artist: "Alan Walker",
                        number: 6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        )
      ],
    );
  }

}