import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/screens/home_screen/components/card_latest_car.dart';
import 'package:flutter/material.dart';

class OtherCars extends StatelessWidget {
  const OtherCars({
    Key? key,
    this.listOtherProduct,
  }) : super(key: key);

  final List<Product>? listOtherProduct;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "Xe khác",
            style: TextStyle(
              fontFamily: 'SVN-Arial3',
              color: Color(0xff000000),
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                listOtherProduct!.length,
                (index) => CardLatestCar(product: listOtherProduct![index]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
