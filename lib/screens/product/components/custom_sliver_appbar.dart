import 'package:auto_group/components/content_image_slider.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double? expandedHeight;
  final List<String>? pathImages;

  const CustomSliverAppBarDelegate({
    @required this.expandedHeight,
    @required this.pathImages,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Opacity(
          opacity: disappear(shrinkOffset),
          child: Container(
            width: double.infinity,
            height: 240,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
        ),
        AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
          backgroundColor: kPrimaryColor,
          title: const Text("Sản phẩm"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          centerTitle: true,
        ),
        //buildAppBar(shrinkOffset),
        Positioned(
          top: 100,
          left: 20,
          right: 20,
          child: Opacity(
            opacity: disappear(shrinkOffset),
            child: ContentImageSlider(
              pathImages: pathImages,
              width: 300,
              boxFit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight!;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight!;

  @override
  double get maxExtent => expandedHeight!;

  @override
  double get minExtent => kToolbarHeight + 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
