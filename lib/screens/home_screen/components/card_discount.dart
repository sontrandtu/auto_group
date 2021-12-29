import 'package:auto_group/components/icon_with_text.dart';
import 'package:auto_group/model/discount_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

import '../../../page_routes.dart';

class CardDiscount extends StatelessWidget {
  const CardDiscount({
    Key? key,
    this.productDiscount,
  }) : super(key: key);

  final ProductDiscount? productDiscount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () => Navigator.of(context,rootNavigator: true).pushNamed(PageRoutes.productDetailsPage,arguments: productDiscount!.product),
        child: Container(
          width: 250,
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
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset(productDiscount!.product!.images![0]),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 58,
                        width: 54,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          color: Colors.red,
                          gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter,
                            colors: [
                              kPrimaryColor,
                              Color(0xFFFC6F6F),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "Giảm",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "${productDiscount!.discountPercent}%",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                child: Column(
                  children: [
                    Text(
                      productDiscount!.product!.descriptionProduct!,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(productDiscount!.product!.price!),
                                Container(
                                  alignment: Alignment.center,
                                  height: 1,
                                  width: 90,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Text(
                              productDiscount!.discountPrice!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconWithText(
                              icon: const Icon(Icons.star, color: Colors.red),
                              text: "${productDiscount!.product!.rating!}",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            IconWithText(
                              icon: const Icon(Icons.location_on_outlined),
                              text: productDiscount!.product!.location!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
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
