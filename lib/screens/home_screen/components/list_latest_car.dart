import 'package:auto_group/components/text_with_text_button.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/screens/product/product_screen.dart';
import 'package:auto_group/screens/product_details_screen/%20product_details_screen.dart';
import 'package:flutter/material.dart';
import 'card_latest_car.dart';

class ListLatestCar extends StatelessWidget {
  const ListLatestCar({
    Key? key,
    this.carProducts,
  }) : super(key: key);

  final List<Product>? carProducts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: TextWithTextButton(
            onTap: () => Navigator.pushNamed(context, ProductScreen.routeName),
            titleText: "Xe đăng mới nhất",
            textButton: "Xem tất cả",
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                carProducts!.length,
                (index) => CardLatestCar(
                  product: carProducts![index],
                  onTap: () => Navigator.pushNamed(
                      context, ProductDetailsScreen.routeName, arguments: carProducts![index]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
