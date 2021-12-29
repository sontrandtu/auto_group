import 'package:auto_group/components/custom_elevate_button.dart';
import 'package:auto_group/demo_data.dart';
import 'package:auto_group/screens/product_details_screen/details_view_model.dart';
import 'package:flutter/material.dart';
import 'components/car_information.dart';
import 'components/commit_of_auto_group.dart';
import 'components/header_product_details.dart';
import 'components/other_cars.dart';
import 'components/product_review.dart';
import 'components/properties_card.dart';
import 'components/shop_information.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatefulWidget {

  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DetailsViewModel>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderProductDetails(product: viewModel.product),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    DemoData.demoDataProperties.length,
                    (index) => PropertiesCard(
                      onTap: () {},
                      title: DemoData.demoDataProperties[index],
                    ),
                  ),
                ],
              ),
            ),
            CarInformation(
              demoDataCarInformation: viewModel.product.productInformation,
            ),
            const CommitOfAutoGroup(),
            ShopInformation(
              onTap: (){},
              agency: viewModel.agency,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ProductReview(
                star: viewModel.product.rating,
                quantityReview: viewModel.product.quantityReview,
              ),
            ),
            OtherCars(
              listOtherProduct: DemoData.carProducts,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: CustomElevateButton(
                title: "Đặt mua ngay",
                onPress: () {},
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 130),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
