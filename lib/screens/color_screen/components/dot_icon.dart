import 'package:flutter/material.dart';

class DotIcon extends StatelessWidget {
  const DotIcon({
    Key? key,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  final Icon? icon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: icon!,
        ),
      ),
    );
  }
}