import 'package:auto_group/components/header_properties.dart';
import 'package:auto_group/demo_data.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

import '../../page_routes.dart';
import 'components/video_card.dart';

class VideoScreen extends StatelessWidget {

  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> listVideo =
        ModalRoute.of(context)!.settings.arguments as List<Map<String, String>>;
    const List<Icon> listIcons = [
      Icon(Icons.threesixty_outlined),
      Icon(Icons.play_circle_outline_outlined),
      Icon(Icons.broken_image_outlined),
    ];
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            size: 50,
            color: Colors.black,
          ),
        ),
        backgroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderProperties(
              title: "Video",
              listIcon: listIcons,
              onTap1: () {},
              onTap2: () {},
              onTap3: () {},
            ),
            const SizedBox(height: 20),
            ...List.generate(
              DemoData.demoVideo.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: VideoCard(
                  pathImage: listVideo[index]["pathImage"],
                  tapFavorite: () {},
                  tapPlay: () => Navigator.pushNamed(
                    context,
                    PageRoutes.playVideoPage,
                    arguments: listVideo[index]["linkVideo"],
                  ),
                  videoLength: listVideo[index]["videoLength"],
                  carName: listVideo[index]["carName"],
                  subTitle: listVideo[index]["subTitle"],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

