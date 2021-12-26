import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class PropertiesCard extends StatefulWidget {
  const PropertiesCard({
    Key? key,
    this.title,
    this.onTap,
  }) : super(key: key);

  final String? title;
  final GestureTapCallback? onTap;

  @override
  State<PropertiesCard> createState() => _PropertiesCardState();
}

class _PropertiesCardState extends State<PropertiesCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          alignment: Alignment.center,
          width: 88,
          height: 58,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                color: Color(0x29000000),
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.title!,
              style: const TextStyle(
                fontFamily: 'SVN-Arial3',
                color: Color(0xFF000000),
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
