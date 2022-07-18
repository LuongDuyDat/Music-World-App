import 'package:flutter/material.dart';
import 'package:music_world_app/screen/search/view/seach_all.dart';
import 'package:music_world_app/screen/search/view/search_album.dart';
import 'package:music_world_app/screen/search/view/search_artist.dart';
import 'package:music_world_app/screen/search/view/search_song.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/globals.dart';
import 'package:music_world_app/util/navigate.dart';
import 'package:music_world_app/util/string.dart';
import 'package:music_world_app/util/text_style.dart';

import '../../../components/button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isEmpty = true;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
              backgroundColor: backgroundColor,
              centerTitle: false,
              leadingWidth: screenWidth * 0.064,
              titleSpacing: 0,
              leading: SizedBox(width: screenWidth * 0.064,),
              title: Container(
                  width: 311,
                  height: screenHeight * 0.044335,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Color(0xFF292D39),
                  ),
                  child: Center(
                    child: TextField(
                      controller: _controller,
                      style: bodyRegular1.copyWith(color: neutralColor2),
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search, color: Colors.white, size: 20,),
                          hintText: searchString,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintStyle: bodyRegular1.copyWith(color: neutralColor2),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isEmpty = true;
                                _controller.text = "";
                              });
                            },
                            icon: Icon(Icons.cancel_outlined, size: 12, color: neutralColor2),
                          ),
                      ),
                      autofocus: false,
                      cursorColor: primaryColor,
                      onChanged: (text) {
                        if (text == "") {
                          setState(() {
                            isEmpty = true;
                          });
                        } else {
                          setState(() {
                            isEmpty = false;
                          });
                        }
                      },
                    ),
                  )
              ),
              actions: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.064,),
                    child: InkWell(
                      child: Text(
                        cancelString,
                        style: subHeadline2.copyWith(color: primaryColor),
                      ),
                      onTap: () {
                        Navigate.popPage(context);
                      },
                    )
                  ),
                )
              ],
              bottom: !isEmpty ?
              TabBar(
                tabs: [
                  Tab(
                    text: allString,
                  ),
                  Tab(
                    text: artistString,
                  ),
                  Tab(
                    text: albumString,
                  ),
                  Tab(
                    text: songString,
                  ),
                ],
                labelColor: textPrimaryColor,
                unselectedLabelColor: neutralColor2,
                indicatorColor: textPrimaryColor,
                labelStyle: title5,
                unselectedLabelStyle: bodyRoboto2,
              ) : PreferredSize(preferredSize: const Size(0.0, 0.0),child: Container(),)
          ),
          body: isEmpty
              ? Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.064, right: screenWidth * 0.064, top: screenHeight * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      historyString,
                      style: title5.copyWith(
                        color: textPrimaryColor,
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.0345,
                      margin: EdgeInsets.only(top: screenHeight * 0.0172),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            child: Container(
                              width: screenWidth * 0.2267,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                              ),
                              child: const Button2(
                                text: "Fall out boy",
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isEmpty = false;
                                _controller.text = "Fall out boy";
                              });
                            },
                          ),
                          SizedBox(width: screenWidth * 0.032,),
                          InkWell(
                            child: Container(
                              width: screenWidth * 0.2267,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryColor),
                              ),
                              child: const Button2(
                                text: "Good girl",
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isEmpty = false;
                                _controller.text = "Good girl";
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.049,),
                    Text(
                      topSearchString,
                      style: title5.copyWith(
                        color: textPrimaryColor,
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.0345,
                      margin: EdgeInsets.only(top: screenHeight * 0.0172),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            child: SizedBox(
                              width: screenWidth * 0.2267,
                              child: Button(
                                text: "Girl",
                                radius: 0,
                                minimumSize: screenHeight * 0.0345,
                                type: bodyRegular3,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isEmpty = false;
                                _controller.text = "Girl";
                              });
                            },
                          ),
                          SizedBox(width: screenWidth * 0.032,),
                          InkWell(
                            child: SizedBox(
                              width: screenWidth * 0.2267,
                              child: Button(
                                text: "Imagine",
                                radius: 0,
                                minimumSize: screenHeight * 0.0345,
                                type: bodyRegular3,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isEmpty = false;
                                _controller.text = "Imagine";
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              : const TabBarView(
                children: [
                  SearchAll(),
                  SearchArtist(),
                  SearchAlbum(),
                  SearchSong(),
                ]
              )
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  final String text;
  final Function? onPressed;

  const Button2({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: const Color(0xFF20242F),
        backgroundColor: Colors.transparent,
        textStyle: bodyMedium1.copyWith(color: textPrimaryColor),
      ),
      onPressed: () {
        if (onPressed != null) {
          onPressed!();
        }
      },
      child: Center(
        child: Text(text, overflow: TextOverflow.ellipsis, style: bodyRegular3.copyWith(color: primaryColor),),
      ),
    );
  }

}