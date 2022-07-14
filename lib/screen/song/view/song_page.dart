import 'package:flutter/material.dart';
import 'package:music_world_app/screen/song/view/song_view1.dart';
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
    Text(
      'Index 2: School',
      style: title1.copyWith(color: textPrimaryColor),
    ),
    Text(
      'Index 3: School',
      style: title1.copyWith(color: textPrimaryColor),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double distance = 0;
    return GestureDetector(
      onPanUpdate: (details) {
        distance = details.delta.dx;
      },
      onPanEnd: (DragEndDetails details) {
        if (distance > 0) {
          setState(() {
            selectedIndex--;
          });
        } else {
          setState(() {
            selectedIndex++;
          });
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
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
    );
  }

}