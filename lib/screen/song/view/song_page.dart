import 'package:flutter/material.dart';
import 'package:music_world_app/screen/song/view/song_view1.dart';
import 'package:music_world_app/screen/song/view/song_view2.dart';
import 'package:music_world_app/screen/song/view/song_view3.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/globals.dart';
import 'package:music_world_app/util/text_style.dart';

import '../../../util/navigate.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key,}) : super(key: key);

  @override
  _SongPageState createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  int selectedIndex = 0;
  static List<Widget> screen = [
    const SongView1(),
    const SongView2(),
    const SongView3(),
  ];

  @override
  Widget build(BuildContext context) {
    double distance = 0;
    return Stack(
      children: [
        selectedIndex != 1 ?
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/song_background.png"),
                  fit: BoxFit.cover,
                )
            ),
          ) :
          const SizedBox(width: 0, height: 0,),
        GestureDetector(
          onPanUpdate: (details) {
            distance = details.delta.dx;
          },
          onPanEnd: (DragEndDetails details) {
            if (distance > 2 && selectedIndex > 0) {
              setState(() {
                selectedIndex--;
              });
            } else if (distance < -2 && selectedIndex < 2) {
              setState(() {
                selectedIndex++;
              });
            }
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: selectedIndex == 1 ? backgroundColor : Colors.transparent,
            appBar: AppBar(
              backgroundColor: selectedIndex == 1 ? backgroundColor : Colors.transparent,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigate.popPage(context);
                },
              ),
            ),
            body: Column(
              children: [
                SizedBox(height: 0.06 * screenHeight,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 3,
                      decoration: BoxDecoration(
                        color: selectedIndex != 0 ? const Color(0xFF71737B) : textPrimaryColor,
                      ),
                    ),
                    const SizedBox(width: 4.77,),
                    Container(
                      width: 20,
                      height: 3,
                      decoration: BoxDecoration(
                        color: selectedIndex != 1 ? const Color(0xFF71737B) : textPrimaryColor,
                      ),
                    ),
                    const SizedBox(width: 4.77,),
                    Container(
                      width: 20,
                      height: 3,
                      decoration: BoxDecoration(
                        color: selectedIndex != 2 ? const Color(0xFF71737B) : textPrimaryColor,
                      ),
                    ),
                  ],
                ),
                screen[selectedIndex],
              ],
            ),
          ),
        ),
      ],
    );
  }

}