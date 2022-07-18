import 'package:flutter/material.dart';
import 'package:music_world_app/screen/explore/view/topic.dart';
import 'package:music_world_app/util/navigate.dart';

import '../../../components/image_type.dart';
import '../../../components/song_tile.dart';
import '../../../util/colors.dart';
import '../../../util/globals.dart';
import '../../../util/string.dart';
import '../../../util/text_style.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.064),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                chartString,
                style: title5.copyWith(color: textPrimaryColor),
              ),
              Text(
                viewAllString,
                style: bodyRegular3.copyWith(color: textPrimaryColor),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.064),
          child: Container(
            height: 0.39 * screenHeight,
            decoration: const BoxDecoration(
              color: Color(0xFF1D1937),
            ),
            child: ListView(
              padding: EdgeInsets.only(left: 0.032 * screenWidth),
              children: const [
                SongListTile(
                  leadingAsset: "assets/images/song1.png",
                  songName: "Nice For What",
                  artist: "Avinci John",
                  number: 1,
                ),
                SongListTile(
                  leadingAsset: "assets/images/song2.png",
                  songName: "Where can I get some ?",
                  artist: "Arian Grande",
                  number: 2,
                ),
                SongListTile(
                  leadingAsset: "assets/images/song3.png",
                  songName: "Why do we use it ?",
                  artist: "Alan Walker",
                  number: 3,
                ),
                SongListTile(
                  leadingAsset: "assets/images/song4.png",
                  songName: "Fall Out Boys",
                  artist: "Avinci John",
                  number: 4,
                ),
                SongListTile(
                  leadingAsset: "assets/images/song5.png",
                  songName: "Nice For What",
                  artist: "Avinci John",
                  number: 5,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.04, left: screenWidth * 0.064, right: screenWidth * 0.064),
          child: SizedBox(
            height: 0.2266 * screenHeight,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      topicString,
                      style: title5.copyWith(color: textPrimaryColor),
                    ),
                    Text(
                      viewAllString,
                      style: bodyRegular3.copyWith(color: textPrimaryColor),
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.0246,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: ImageType(
                        asset: "assets/images/hip_hop.png",
                        type: "HipHop",
                        width: 0.256 * screenWidth,
                        height: 0.075 * screenHeight,
                      ),
                      onTap: () {
                        Navigate.pushPage(context, const Topic(type: "Playlist",));
                      },
                    ),
                    InkWell(
                      child: ImageType(
                        asset: "assets/images/pop.png",
                        type: "POP",
                        width: 0.256 * screenWidth,
                        height: 0.075 * screenHeight,
                      ),
                      onTap: () {
                        Navigate.pushPage(context, const Topic(type: "Playlist",));
                      },
                    ),
                    InkWell(
                      child: ImageType(
                        asset: "assets/images/jazz.png",
                        type: "Jazz",
                        width: 0.256 * screenWidth,
                        height: 0.075 * screenHeight,
                      ),
                      onTap: () {
                        Navigate.pushPage(context, const Topic(type: "Playlist",));
                      },
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.0197,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: ImageType(
                        asset: "assets/images/danc.png",
                        type: "Danc",
                        width: 0.256 * screenWidth,
                        height: 0.075 * screenHeight,
                      ),
                      onTap: () {
                        Navigate.pushPage(context, const Topic(type: "Playlist",));
                      },
                    ),
                    InkWell(
                      child: ImageType(
                        asset: "assets/images/ballad.png",
                        type: "Ballad",
                        width: 0.256 * screenWidth,
                        height: 0.075 * screenHeight,
                      ),
                      onTap: () {
                        Navigate.pushPage(context, const Topic(type: "Playlist",));
                      },
                    ),
                    InkWell(
                      child: ImageType(
                        asset: "assets/images/R_B.png",
                        type: "R&B",
                        width: 0.256 * screenWidth,
                        height: 0.075 * screenHeight,
                      ),
                      onTap: () {
                        Navigate.pushPage(context, const Topic(type: "Playlist",));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
