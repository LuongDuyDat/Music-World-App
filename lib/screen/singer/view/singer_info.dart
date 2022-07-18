import 'package:flutter/material.dart';
import 'package:music_world_app/components/button.dart';
import 'package:music_world_app/components/image_type.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/string.dart';
import 'package:music_world_app/util/text_style.dart';

import '../../../components/song_tile.dart';
import '../../../util/globals.dart';
import '../../../util/navigate.dart';
import '../../song/view/song_page.dart';

class SingerInfo extends StatelessWidget {
  const SingerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/singer_background.png"),
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
              padding: EdgeInsets.fromLTRB(0.064 * screenWidth, 0.022 * screenHeight, 0.064 * screenWidth, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suji Wong",
                    style: title2.copyWith(color: textPrimaryColor),
                  ),
                  SizedBox(height: 0.014 * screenHeight,),
                  SizedBox(
                    width: 0.256 * screenWidth,
                    child: Button(
                      text: followString,
                      radius: 0,
                      minimumSize: screenHeight * 0.0345,
                      type: bodyRegular3,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.04267 * screenWidth, 0.0394 * screenHeight, 0.04267 * screenWidth, 0.0443 * screenHeight),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "22",
                              style: subHeadline1.copyWith(color: textPrimaryColor),
                            ),
                            Text(
                              playlistString,
                              style: subHeadline1.copyWith(color: textPrimaryColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "360 K",
                              style: subHeadline1.copyWith(color: textPrimaryColor),
                            ),
                            Text(
                              followerString,
                              style: subHeadline1.copyWith(color: textPrimaryColor),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "56",
                              style: subHeadline1.copyWith(color: textPrimaryColor),
                            ),
                            Text(
                              followingString,
                              style: subHeadline1.copyWith(color: textPrimaryColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page"
                        " when looking at its layout. The point of using Lorem Ipsum is that it",
                    style: lyric.copyWith(color: textPrimaryColor),
                  ),
                  SizedBox(height: 0.03 * screenHeight,),
                  Divider(color: neutralColor2, thickness: 1.5,),
                  SizedBox(height: 0.03 * screenHeight,),
                  Text(
                    songString,
                    style: subHeadline1.copyWith(color: textPrimaryColor),
                  ),
                  SizedBox(
                    height: screenHeight * 0.24,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        InkWell(
                          child: const SongListTile(
                            leadingAsset: "assets/images/song1.png",
                            songName: "Nice For What",
                            artist: "Avinci John",
                          ),
                          onTap: () {
                            Navigate.pushPage(context, const SongPage());
                          },
                        ),
                        const SongListTile(
                          leadingAsset: "assets/images/song2.png",
                          songName: "Where can I get some ?",
                          artist: "Arian Grande",
                        ),
                        const SongListTile(
                          leadingAsset: "assets/images/song3.png",
                          songName: "Why do we use it ?",
                          artist: "Alan Walker",
                        ),
                        const SongListTile(
                          leadingAsset: "assets/images/song4.png",
                          songName: "Fall Out Boys",
                          artist: "Avinci John",
                        ),
                        const SongListTile(
                          leadingAsset: "assets/images/song2.png",
                          songName: "Where can I get some ?",
                          artist: "Arian Grande",
                        ),
                        const SongListTile(
                          leadingAsset: "assets/images/song3.png",
                          songName: "Why do we use it ?",
                          artist: "Alan Walker",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.025 * screenHeight,),
                  Text(
                    albumString,
                    style: subHeadline1.copyWith(color: textPrimaryColor),
                  ),
                  SizedBox(height: 0.0246 * screenHeight,),
                  SizedBox(
                    width: 0.872 * screenWidth,
                    height: 0.2347 * screenWidth,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ImageType(
                          asset: "assets/images/Album1.png",
                          type: "That XX",
                          width: 0.2347 * screenWidth,
                          height: 0.2347 * screenWidth,
                        ),
                        SizedBox(width: 0.04267 * screenWidth),
                        ImageType(
                          asset: "assets/images/Album2.png",
                          type: "Lost in",
                          width: 0.2347 * screenWidth,
                          height: 0.2347 * screenWidth,
                        ),
                        SizedBox(width: 0.04267 * screenWidth),
                        ImageType(
                          asset: "assets/images/Album3.png",
                          type: "Studio 09",
                          width: 0.2347 * screenWidth,
                          height: 0.2347 * screenWidth,
                        ),
                        SizedBox(width: 0.04267 * screenWidth),
                        ImageType(
                          asset: "assets/images/Album4.png",
                          type: "Fantastic",
                          width: 0.2347 * screenWidth,
                          height: 0.2347 * screenWidth,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.037 * screenHeight,)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

}