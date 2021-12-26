import 'package:auto_group/screens/home_screen/home_view_model.dart';
import 'package:auto_group/screens/installment_consulting_screen/installment_consulting_screen.dart';
import 'package:auto_group/screens/color_screen/color_screen.dart';
import 'package:auto_group/screens/home_screen/home_screen.dart';
import 'package:auto_group/screens/page/account_page.dart';
import 'package:auto_group/screens/page/booking_page.dart';
import 'package:auto_group/screens/page/hotline_page.dart';
import 'package:auto_group/screens/page/post_page.dart';
import 'package:auto_group/screens/product/product_screen.dart';
import 'package:auto_group/screens/product_details_screen/%20product_details_screen.dart';
import 'package:auto_group/screens/register_test_drive_screen/register_test_driver_screen.dart';
import 'package:auto_group/screens/side_bar_screen/side_bar_screen.dart';
import 'package:auto_group/screens/video_screen/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final Map<String, WidgetBuilder> routes = {
  //MainLayout.routeName: (BuildContext context) => MainLayout(),
  HomeScreen.routeName: (BuildContext context) => ChangeNotifierProvider(
        create: (_) => HomeViewModel(
          context.read(),
          context.read(),
          context.watch(),
          context.read(),
        ),
        child: const HomeScreen(),
      ),
  ProductScreen.routeName: (BuildContext context) => ChangeNotifierProvider(
        create: (_) => HomeViewModel(
          context.read(),
          context.read(),
          context.read(),
          context.read(),
        ),
        child: const ProductScreen(),
      ),
  ColorScreen.routeName: (context) => const ColorScreen(),
  VideoScreen.routeName: (context) => const VideoScreen(),
  RegisterTestDriveScreen.routeName: (context) =>
      const RegisterTestDriveScreen(),
  ProductDetailsScreen.routeName: (context) => const ProductDetailsScreen(),
  //PlayVideoScreen.routeName: (context) => PlayVideoScreen(),
  InstallmentConsultingScreen.routeName: (context) =>
      const InstallmentConsultingScreen(),
  SideBarScreen.routeName: (context) => const SideBarScreen(),
  BookingPage.routeName: (context) => const BookingPage(),
  PostPage.routeName: (context) => const PostPage(),
  HotlinePage.routeName: (context) => const HotlinePage(),
  AccountPage.routeName: (context) => const AccountPage(),
};
