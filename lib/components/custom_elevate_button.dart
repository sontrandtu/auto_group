import 'package:flutter/material.dart';

class CustomElevateButton extends StatelessWidget {
  const CustomElevateButton({
    Key? key,
    @required this.title,
    @required this.onPress,
    @required this.padding,
  }) : super(key: key);

  final String? title;
  final GestureTapCallback? onPress;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: padding,
        primary: const Color(0xFFD20000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPress,
      child: Text(
        title!,
        style: const TextStyle(
          fontFamily: 'SVN-Arial3',
          color: Color(0xffffffff),
          fontSize: 17,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
