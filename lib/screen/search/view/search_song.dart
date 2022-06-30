import 'package:flutter/material.dart';
import 'package:music_world_app/util/string.dart';

import '../../../components/song_tile.dart';
import '../../../util/colors.dart';
import '../../../util/globals.dart';
import '../../../util/text_style.dart';

class SearchSong extends StatelessWidget {
  const SearchSong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(screenWidth * 0.064, screenHeight * 0.0394, screenWidth * 0.064, 0),
            child: Text(
              topSearchString,
              style: subHeadline1.copyWith(color: textPrimaryColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.026, top: screenHeight * 0.01),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                const SongListTile(leadingAsset: "assets/images/song3.png", songName: "Just For What", artist: "Avinci John", large: 40,),
                Divider(indent: screenWidth * 0.175, color: neutralColor2, height: 5,),
                const SongListTile(leadingAsset: "assets/images/song2.png", songName: "July and Remé", artist: "Jeeny Benmy", large: 40,),
                Divider(indent: screenWidth * 0.175, color: neutralColor2, height: 5,),
                const SongListTile(leadingAsset: "assets/images/song1.png", songName: "January 01", artist: "Chain Smoker", large: 40,),
                Divider(indent: screenWidth * 0.175, color: neutralColor2, height: 5,),
              ],
            ),
          ),
        ],
      ),
    );
  }

}