import 'package:auto_group/components/header_properties.dart';
import 'package:auto_group/demo_data.dart';
import 'package:auto_group/screens/video_screen/video_screen.dart';
import 'package:flutter/material.dart';
import 'components/color_select.dart';

class ColorScreen extends StatelessWidget {
  static String routeName = "/color";

  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Icon> listIcons = [
      Icon(Icons.threesixty_outlined),
      Icon(Icons.play_circle_outline_outlined),
      Icon(Icons.broken_image_outlined),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            size: 50,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          HeaderProperties(
            title: "Màu sắc",
            listIcon: listIcons,
            onTap1: () {
              print("Click");
            },
            onTap2: () => Navigator.pushNamed(context, VideoScreen.routeName),
            onTap3: () {
              print("Click");
            },
          ),
          Expanded(
            flex: 3,
            child: Image.asset("assets/images/red_car2x.png"),
          ),
          ColorSelect(listColor: DemoData.demoColors)
        ],
      ),
    );
  }
}
