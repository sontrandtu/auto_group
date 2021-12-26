import 'package:auto_group/components/content_image_slider.dart';
import 'package:auto_group/model/category_model.dart';
import 'package:auto_group/screens/home_screen/components/menu_icon.dart';
import 'package:auto_group/screens/home_screen/components/search_home.dart';
import 'package:flutter/material.dart';
import '../../../demo_data.dart';
import 'list_function.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.demoCategories,
    required this.demoDataGrid,
  }) : super(key: key);

  final List<Category> demoCategories;
  final List<Map<String, String>> demoDataGrid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ContentImageSlider(
              pathImages: DemoData.demoDataContentImageHome,
              height: 400,
              width: double.infinity,
              boxFit: BoxFit.fill,
            ),
            const Positioned(
              top: 50,
              left: 20,
              child: MenuIcon(),
            ),
          ],
        ),
        HomeSearch(categories: demoCategories),
        ListFunction(demoDataGrid: demoDataGrid),
      ],
    );
  }
}
