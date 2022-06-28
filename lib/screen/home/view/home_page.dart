import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_world_app/components/playing_bar.dart';
import 'package:music_world_app/components/song_tile.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/globals.dart';
import 'package:music_world_app/util/text_style.dart';

import '../../../util/string.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double recentMusicHeight = isPlayingSong ? 0.3125 : 0.3906;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.064),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                newAlbumString,
                style: title5.copyWith(color: textPrimaryColor),
              ),
              Text(
                viewAllString,
                style: bodyRegular3.copyWith(color: textPrimaryColor),
              )
            ],
          ),
        ),
        CarouselSlider(
            items: const [
              ImageSlideBar(asset: "assets/images/Album1.png", title: "Do it", singer: "Milian Luu",),
              ImageSlideBar(asset: "assets/images/Album2.png", title: "Pray for you", singer: "The Weekend",),
              ImageSlideBar(asset: "assets/images/Album1.png", title: "Do it", singer: "Milian Luu",),
            ],
            options: CarouselOptions(
              height: 0.2 * screenHeight,
              initialPage: 1,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              viewportFraction: 0.5,
            )
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.049, left: screenWidth * 0.064),
            child: Text(
              recentMusicString,
              style: title5.copyWith(color: textPrimaryColor),
            ),
          ),
        ),
        Container(
          height: recentMusicHeight * screenHeight,
          padding: EdgeInsets.only(left: screenWidth * 0.064),
          child: ListView(
            //shrinkWrap: true,
            //physics: const NeverScrollableScrollPhysics(),
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
            ],
          ),
        ),
        isPlayingSong
            ? Container(
              height: 0.079 * screenHeight,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Center(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.064),
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/song1.png"),
                  ),
                  title: Text(
                    "Nice For What",
                    style: bodyRoboto2.copyWith(color: neutralColor3),
                  ),
                  trailing: Container(
                    alignment: Alignment.centerRight,
                    width: screenWidth * 0.3413,
                    child: const PlayingBar(type: 1),
                  ),
                ),
              )
            )
            : const SizedBox(width: 0, height: 0,)
      ],
    );
  }

}

class ImageSlideBar extends StatelessWidget {
  final String asset;
  final String title;
  final String singer;
  const ImageSlideBar({
    Key? key,
    required this.asset,
    required this.title,
    required this.singer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(asset, width: screenWidth * 0.452, height: screenWidth * 0.452, fit: BoxFit.cover,),
        Positioned(
          left: screenWidth * 0.04626,
          bottom: screenHeight * 0.008,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: bodyRegular3.copyWith(
                  color: textPrimaryColor,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: neutralColor3,
                      blurRadius: 8,
                      offset: const Offset(4.0, 4.0),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.002,),
              Text(
                singer,
                style: bodyRegular3.copyWith(
                  color: textPrimaryColor,
                  shadows: [
                    Shadow(
                      color: neutralColor3,
                      blurRadius: 20,
                      offset: const Offset(8.0, 8.0),
                    )
                  ],
                ),

              ),
            ],
          ),
        )
      ],
    );
  }

}