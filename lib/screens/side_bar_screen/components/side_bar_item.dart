import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  const SideBarItem({
    Key? key,
    this.icon,
    this.title,
    this.onTap,
  }) : super(key: key);

  final IconData? icon;
  final String? title;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(
              icon,
              color: kSecondaryColor,
            ),
            const SizedBox(width: 15),
            Text(
              title!,
              style: const TextStyle(color: kSecondaryColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}