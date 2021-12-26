import 'package:auto_group/components/icon_with_text.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class CardLatestCar extends StatelessWidget {
  const CardLatestCar({
    Key? key,
    this.product, this.onTap,
  }) : super(key: key);

  final Product? product;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 170,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(product!.images![0]),
                  const Positioned(
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 20,
                    ),
                    top: 5,
                    right: 10,
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Column(
                  children: [
                    Text(
                      product!.descriptionProduct!,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    IconWithText(
                      text: "${product!.price}",
                      icon: const Icon(Icons.monetization_on_outlined),
                      style: const TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    IconWithText(
                      text: "${product!.km}",
                      icon: const Icon(Icons.speed_outlined),
                    ),
                    IconWithText(
                      text: "${product!.location}",
                      icon: const Icon(Icons.location_on_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
