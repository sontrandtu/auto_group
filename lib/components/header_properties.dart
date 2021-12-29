import 'package:auto_group/screens/color_screen/components/dot_icon.dart';
import 'package:flutter/material.dart';

class HeaderProperties extends StatelessWidget {
  const HeaderProperties({
    Key? key,
    @required this.title,
  @required this.listIcon,
  @required this.onTap1,
  @required this.onTap2,
  @required this.onTap3,
  }) : super(key: key);

  final String? title;
  final List<Icon>? listIcon;
  final GestureTapCallback? onTap1, onTap2, onTap3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title!,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              color: Color(0xFFEEEEEE)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DotIcon(
                  onTap:onTap1,
                  icon: listIcon![0],
                ),
                DotIcon(
                  onTap: onTap2,
                  icon: listIcon![1],
                ),
                DotIcon(
                  onTap: onTap3,
                  icon: listIcon![2],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
