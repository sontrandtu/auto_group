import 'package:flutter/material.dart';

class CarInformationCard extends StatelessWidget {
  const CarInformationCard({
    Key? key,
    this.icon,
    this.title,
  }) : super(key: key);
  final IconData? icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: TextField(
        textAlign: TextAlign.left,
        enabled: false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: const Color(0xFF000000),
          ),
          hintText: title!,
          hintStyle: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    );
  }
}