// import 'package:auto_group/components/content_image_slider.dart';
// import 'package:auto_group/theme/color.dart';
// import 'package:flutter/material.dart';
//
// class CustomSliverAppBarProductDetails extends SliverPersistentHeaderDelegate {
//   final double? expandedHeight;
//   final List<String>? pathImages;
//
//   const CustomSliverAppBarProductDetails({
//     @required this.expandedHeight,
//     @required this.pathImages,
//   });
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Stack(
//       //fit: StackFit.expand,
//       clipBehavior: Clip.none,
//       children: [
//         Opacity(
//           opacity: disappear(shrinkOffset),
//           child: Container(
//             width: double.infinity,
//             height: 240,
//             decoration: const BoxDecoration(
//               color: kPrimaryColor,
//               borderRadius: BorderRadius.vertical(
//                 bottom: Radius.circular(30),
//               ),
//             ),
//           ),
//         ),
//         AppBar(
//           shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               bottom: Radius.circular(30),
//             ),
//           ),
//           automaticallyImplyLeading: false,
//           title: Column(
//             children: [
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(
//                       text: "Porsche\n",
//                       style: TextStyle(
//                         fontFamily: 'SVN-Arial3',
//                         color: kSecondaryColor,
//                         fontSize: 21,
//                         fontWeight: FontWeight.w700,
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     TextSpan(
//                       text:
//                           "Siêu phầm PORSCHE\nPANAMERA model 2020 full option",
//                       style: TextStyle(
//                         fontFamily: 'SVN-Arial3',
//                         color: kSecondaryColor,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Text("Giá: 7 tỷ 999 triệu")
//             ],
//           ),
//           backgroundColor: kPrimaryColor,
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.highlight_remove_outlined),
//             ),
//           ],
//         ),
//         //buildAppBar(shrinkOffset),
//         Positioned(
//           top: 250,
//           left: 20,
//           right: 20,
//           child: Opacity(
//             opacity: disappear(shrinkOffset),
//             child: ContentImageSlider(
//               pathImages: pathImages,
//               width: 300,
//               boxFit: BoxFit.fill,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   double appear(double shrinkOffset) => shrinkOffset / expandedHeight!;
//
//   double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight!;
//
//   @override
//   double get maxExtent => expandedHeight!;
//
//   @override
//   double get minExtent => kToolbarHeight + 60;
//
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
// }
