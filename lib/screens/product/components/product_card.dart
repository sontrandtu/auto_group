import 'package:auto_group/components/icon_with_text.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    @required this.onTap,
    this.product,
  }) : super(key: key);

  final Product? product;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        width: 330,
        height: 444,
        decoration: BoxDecoration(
          color: const Color(0xF5E0E0E0),
          borderRadius: BorderRadius.circular(43),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(product!.images![0]),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product!.productName!,
                            style: const TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          IconWithText(
                            text: "${product!.rating!}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            icon: const Icon(
                              Icons.star,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 210,
                          child: Text(
                            product!.descriptionProduct!,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      IconWithText(
                        text: product!.price,
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        icon: const Icon(
                          Icons.monetization_on_outlined,
                        ),
                      ),
                      const SizedBox(height: 5),
                      IconWithText(
                        text: "${product!.km}",
                        icon: const Icon(
                          Icons.speed_outlined,
                        ),
                      ),
                      const SizedBox(height: 5),
                      IconWithText(
                        text: product!.location!,
                        icon: const Icon(
                          Icons.location_on_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
              right: 10,
              top: 15,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  width: 158,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(43),
                      bottomRight: Radius.circular(43),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Đặt hàng\t",
                          style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: kSecondaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
