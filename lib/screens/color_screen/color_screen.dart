import 'package:auto_group/components/header_properties.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/page_routes.dart';
import 'package:flutter/material.dart';
import 'components/color_select.dart';

class ColorScreen extends StatelessWidget {

  const ColorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    const List<Icon> listIcons = [
      Icon(Icons.threesixty_outlined),
      Icon(Icons.play_circle_outline_outlined),
      Icon(Icons.broken_image_outlined),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.keyboard_arrow_down,
            size: 50,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          HeaderProperties(
            title: "Màu sắc",
            listIcon: listIcons,
            onTap1: () {
              print("Click");
            },
            onTap2: () => Navigator.pushNamed(context, PageRoutes.videoPage, arguments: product.listLinkVideo),
            onTap3: () {
              print("Click");
            },
          ),
          Expanded(
            flex: 3,
            child: Image.asset("assets/images/red_car2x.png"),
          ),
          ColorSelect(listColor: product.listColors)
        ],
      ),
    );
  }
}
