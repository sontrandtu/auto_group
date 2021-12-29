import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class ColorSelect extends StatelessWidget {
  const ColorSelect({
    Key? key,
    @required this.listColor,
  }) : super(key: key);

  final List<String>? listColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 160,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: const Color(0x00000003),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: kSecondaryColor, width: 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0x00000003),
                        offset: Offset(0, 1),
                        blurRadius: 5,
                        spreadRadius: 0)
                  ],
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                  onPressed: () {},
                ),
              ),
            ),
            Positioned(
              left: 120,
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                focusColor: Colors.black,
                onTap: () {},
                child: buildDotColor(int.parse(listColor![0])),
              ),
            ),
            Positioned(
              left: 80,
              child: InkWell(
                onTap: () {},
                child: buildDotColor(int.parse(listColor![1])),
              ),
            ),
            Positioned(
              left: 40,
              child: InkWell(
                onTap: () {},
                child: buildDotColor(int.parse(listColor![2])),
              ),
            ),
            InkWell(
              onTap: () {},
              child: buildDotColor(int.parse(listColor![3])),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDotColor(int color) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white, width: 5),
      ),
    );
  }
}
