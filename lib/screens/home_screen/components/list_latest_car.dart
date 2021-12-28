import 'package:auto_group/components/text_with_text_button.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:flutter/material.dart';
import '../../../page_routes.dart';
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
            onTap: () => Navigator.of(context,rootNavigator: true).pushNamed(PageRoutes.productPage),
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
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .pushNamed(PageRoutes.productDetailsPage,
                          arguments: carProducts![index]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
