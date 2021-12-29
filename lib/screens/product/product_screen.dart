import 'package:auto_group/screens/home_screen/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/list_product.dart';
import 'components/list_select.dart';

class ProductScreen extends StatelessWidget {

  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    return Stack(
      children: [
        ListProduct(
          categories: viewModel.categories,
          products: viewModel.products,
        ),
        const ListSelect(),
      ],
    );
  }
}
