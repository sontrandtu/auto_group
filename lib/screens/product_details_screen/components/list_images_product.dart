import 'package:flutter/material.dart';

class ListImageProduct extends StatelessWidget {
  const ListImageProduct({
    Key? key,
    @required this.images,
  }) : super(key: key);
  final List<String>? images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            images!.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(
                images![index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
