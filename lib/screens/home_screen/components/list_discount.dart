import 'package:auto_group/components/text_with_text_button.dart';
import 'package:auto_group/theme/config.dart';
import 'package:auto_group/model/discount_model.dart';
import 'package:flutter/material.dart';

import 'card_discount.dart';

class ListDiscount extends StatelessWidget {
  const ListDiscount({
    Key? key,
    this.listDiscount,
  }) : super(key: key);

  final List<ProductDiscount>? listDiscount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithTextButton(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
          },
          titleText: "Ưu đãi",
          textButton: "Xem tất cả",
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                listDiscount!.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CardDiscount(productDiscount: listDiscount![index]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
