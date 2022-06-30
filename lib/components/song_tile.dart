import 'package:flutter/material.dart';
import 'package:music_world_app/util/colors.dart';
import 'package:music_world_app/util/globals.dart';
import 'package:music_world_app/util/text_style.dart';

class SongListTile extends StatelessWidget {
  final int? number;
  final String leadingAsset;
  final String songName;
  final String? artist;
  final double large;
  const SongListTile({
    Key? key,
    this.number,
    required this.leadingAsset,
    required this.songName,
    this.artist,
    this.large = 32,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        number != null ? number! < 10 ? Text('0' + number.toString(), style: bodyRoboto2.copyWith(color: textPrimaryColor),)
            : Text(number.toString(), style: bodyRoboto2.copyWith(color: textPrimaryColor),)
            : const SizedBox(width: 0, height: 0,),
        Flexible(
          child:  ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.00446),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: Image.asset(leadingAsset, width: large, height: large, fit: BoxFit.cover,),
              ),
            ),
            title: Text(
              songName,
              style: bodyRoboto2.copyWith(color: textPrimaryColor),
            ),
            subtitle: artist != null ? Text(
              artist!,
              style: bodyRegular3.copyWith(color: const Color(0xFF817A7A)),
            ) : null,
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz),
              color: textPrimaryColor,
              onPressed: (){},
            ),
          ),
        )
      ],
    );
  }

}