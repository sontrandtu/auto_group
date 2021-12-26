import 'package:flutter/material.dart';

class FunctionCard extends StatelessWidget {
  const FunctionCard({
    Key? key,
    @required this.title,
    @required this.pathImage,
    @required this.onTap,
  }) : super(key: key);

  final String? title;
  final String? pathImage;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 119,
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              pathImage!,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
