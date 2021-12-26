import 'package:auto_group/model/category_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class CarType extends StatelessWidget {
  const CarType({
    Key? key,
    this.category,
    this.onTap,
  }) : super(key: key);

  final Category? category;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 95,
          width: 95,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            boxShadow: const [
              BoxShadow(
                color: Color(0x29000000),
                blurRadius: 6,
                spreadRadius: 0,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(category!.pathLogo!),
              Text(
                "${category!.name}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: category!.name!.length > 7 ? 10 : 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
