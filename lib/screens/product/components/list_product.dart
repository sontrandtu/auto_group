import 'package:auto_group/model/category_model.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/screens/product/components/custom_sliver_appbar.dart';
import 'package:auto_group/screens/home_screen/components/car_type.dart';
import 'package:auto_group/screens/product/components/product_card.dart';
import 'package:flutter/material.dart';

import '../../../demo_data.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({
    this.products,
    this.categories,
    Key? key,
  }) : super(key: key);

  final List<Product>? products;
  final List<Category>? categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(
                expandedHeight: 200,
                pathImages: DemoData.demoDataContentImageProduct),
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 140, bottom: 10),
            sliver: SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                          categories!.length,
                          (index) => CarType(
                            category: categories![index],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              itemExtent: 100,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) => ProductCard(
                product: products![index],
                onTap: () {},
              ),
              childCount: products!.length,
            ),
          ),
        ],
      ),
    );
  }
}
