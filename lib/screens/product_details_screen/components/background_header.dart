import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/page_routes.dart';
import 'package:auto_group/screens/product_details_screen/components/round_button.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

import 'list_images_product.dart';

class BackgroundHeader extends StatelessWidget {
  const BackgroundHeader({
    Key? key,
    this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: kPrimaryColor,
              boxShadow: const [
                BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 1),
                    blurRadius: 3,
                    spreadRadius: 0)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.6,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${product!.productName}\n",
                            style: const TextStyle(
                              fontFamily: 'SVN-Arial3',
                              color: kSecondaryColor,
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          TextSpan(
                            text: "${product!.descriptionProduct}",
                            style: const TextStyle(
                              fontFamily: 'SVN-Arial3',
                              color: kSecondaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Gi??: ",
                          style: TextStyle(
                            fontFamily: 'SVN-Arial3',
                            color: kSecondaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        TextSpan(
                          text: "${product!.price}",
                          style: const TextStyle(
                            fontFamily: 'SVN-Arial3',
                            color: kSecondaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(
                            context, PageRoutes.installmentConsultingPage),
                    style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.symmetric(),
                      primary: kSecondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "T?? v???n tr??? g??p",
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 115),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 100,
              child: ListImageProduct(images: product!.images),
            ),
            Row(
              children: [
                RoundButton(
                  onTap: () {},
                  icon: const Icon(Icons.threesixty_outlined),
                  title: "H??nh ???nh",
                ),
                RoundButton(
                  onTap: () =>
                      Navigator.pushNamed(
                          context, PageRoutes.videoPage,
                          arguments: product!.listLinkVideo),
                  icon: const Icon(Icons.play_circle_outline_outlined),
                  title: "Video",
                ),
                RoundButton(
                  onTap: () =>
                      Navigator.pushNamed(
                          context, PageRoutes.colorPage, arguments: product),
                  icon: const Icon(Icons.color_lens_outlined),
                  title: "M??u s???c",
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
