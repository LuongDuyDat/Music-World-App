
import 'package:flutter/cupertino.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ImageSlideBar(asset: "assets/images/Album1.png",),
    );
  }

}

class ImageSlideBar extends StatelessWidget {
  final String asset;
  const ImageSlideBar({
    Key? key,
    required this.asset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(asset, width: 200, height: 200,),
      ],
    );
  }

}