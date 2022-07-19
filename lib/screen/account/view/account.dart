import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_world_app/util/globals.dart';

import '../../../components/button.dart';
import '../../../util/colors.dart';
import '../../../util/string.dart';
import '../../../util/text_style.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.064 * screenWidth, 0.015 * screenHeight, 0.064 * screenWidth, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/Album1.png",
                      width: 0.2133 * screenWidth,
                      height: 0.2133 * screenWidth,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 0.0933 * screenWidth,),
                    SizedBox(
                      width: 0.5654 * screenWidth,
                      height: 0.2133 * screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "22",
                                    style: bodyRegular1.copyWith(color: textPrimaryColor),
                                  ),
                                  Text(
                                    playlistString,
                                    style: bodyRegular1.copyWith(color: textPrimaryColor),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "360 K",
                                    style: bodyRegular1.copyWith(color: textPrimaryColor),
                                  ),
                                  Text(
                                    followerString,
                                    style: bodyRegular1.copyWith(color: textPrimaryColor),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "56",
                                    style: bodyRegular1.copyWith(color: textPrimaryColor),
                                  ),
                                  Text(
                                    followingString,
                                    style: bodyRegular1.copyWith(color: textPrimaryColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 0.208 * screenWidth,
                            height: screenHeight * 0.0345,
                            child: Button(
                              text: followString,
                              radius: 0,
                              minimumSize: screenHeight * 0.0345,
                              type: bodyRegular3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.0394 * screenHeight,),
                Text(
                  libraryString,
                  style: title5.copyWith(color: textPrimaryColor),
                ),
                SizedBox(height: 0.01 * screenHeight,),
                LibraryOption(title: myPlaylistString, icon: "assets/icons/playlist_icon.png"),
                Divider(color: neutralColor3, thickness: 1.5,),
                LibraryOption(title: albumString, icon: "assets/icons/album_icon.png"),
                Divider(color: neutralColor3, thickness: 1.5,),
                LibraryOption(title: artistString, icon: "assets/icons/artist_icon.png"),
                Divider(color: neutralColor3, thickness: 1.5,),
                LibraryOption(title: downloadString, icon: "assets/icons/download_icon.png"),
                SizedBox(height: 0.01 * screenHeight,),
                Text(
                  recentActivityString,
                  style: title5.copyWith(color: textPrimaryColor),
                ),
                SizedBox(height: 0.0246 * screenHeight,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/activity1.png",
                      width: 0.2133 * screenWidth,
                      height: 0.2133 * screenWidth,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/activity2.png",
                      width: 0.2133 * screenWidth,
                      height: 0.2133 * screenWidth,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/activity3.png",
                      width: 0.2133 * screenWidth,
                      height: 0.2133 * screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                SizedBox(height: 0.0246 * screenHeight,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/activity4.png",
                      width: 0.2133 * screenWidth,
                      height: 0.2133 * screenWidth,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/activity5.png",
                      width: 0.2133 * screenWidth,
                      height: 0.2133 * screenWidth,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/activity6.png",
                      width: 0.2133 * screenWidth,
                      height: 0.2133 * screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class LibraryOption extends StatelessWidget {
  final String title;
  final String icon;
  const LibraryOption({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      horizontalTitleGap: 3,
      leading: ImageIcon(
        AssetImage(icon),
        color: const Color(0xFFEEEEEE),
        size: 20,
      ),
      title: Text(
        title,
        style: bodyRegular1.copyWith(color: textPrimaryColor,),
      ),
      trailing: const Icon(
        Icons.navigate_next,
        size: 24,
        color: Color(0xFFEEEEEE),
      ),
    );
  }

}