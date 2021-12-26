import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ContentImageSlider extends StatefulWidget {
  const ContentImageSlider({
    Key? key,
    @required this.pathImages,
    this.height,
    this.width,
    this.boxFit,
  }) : super(key: key);

  final List<String>? pathImages;
  final double? height;
  final double? width;
  final BoxFit? boxFit;

  @override
  State<ContentImageSlider> createState() => _ContentImageSliderState();
}

class _ContentImageSliderState extends State<ContentImageSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider.builder(
          itemCount: widget.pathImages!.length,
          itemBuilder: (context, index, realIndex) {
            final String pathImage = widget.pathImages![index];
            return buildImage(pathImage, index);
          },
          options: CarouselOptions(
            height: widget.height,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: widget.pathImages!.length,
            effect: JumpingDotEffect(
              dotWidth: 8,
              dotHeight: 8,
              dotColor: Colors.grey,
              activeDotColor: Color(0xFFD20000),
            ),
          ),
        )
      ],
    );
  }

  buildImage(pathImage, int index) => Container(
        width: widget.width,
        child: Image.asset(
          pathImage,
          fit: widget.boxFit,
        ),
      );
}
