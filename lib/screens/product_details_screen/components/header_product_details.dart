import 'package:auto_group/components/content_image_slider.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import 'background_header.dart';

class HeaderProductDetails extends StatelessWidget {
  const HeaderProductDetails({
    Key? key,
    this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BackgroundHeader(
          product: product,
        ),
        ContentImageSlider(
          width: double.infinity,
          pathImages: product!.images,
        ),
        Positioned(
          top: 30,
          right: 20,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.clear_outlined,
              color: kSecondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
