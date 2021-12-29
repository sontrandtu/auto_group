import 'package:auto_group/base/app_provider.dart';
import 'package:auto_group/model/product_model.dart';
import 'package:auto_group/page_routes.dart';
import 'package:auto_group/response/agents_response.dart';
import 'package:auto_group/response/categories_response.dart';
import 'package:auto_group/response/news_response.dart';
import 'package:auto_group/response/products_response.dart';

import 'package:auto_group/screens/color_screen/color_screen.dart';
import 'package:auto_group/screens/home_screen/home_view_model.dart';
import 'package:auto_group/screens/installment_consulting_screen/installment_consulting_screen.dart';
import 'package:auto_group/screens/main_page/main_layout.dart';
import 'package:auto_group/screens/play_video/play_video_screen.dart';
import 'package:auto_group/screens/product/product_screen.dart';
import 'package:auto_group/screens/product_details_screen/product_details_screen.dart';
import 'package:auto_group/screens/product_details_screen/details_view_model.dart';
import 'package:auto_group/screens/register_test_drive_screen/register_test_driver_screen.dart';
import 'package:auto_group/screens/video_screen/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_) => CategoryRepository()),
        Provider(create: (_) => ProductsResponse()),
        Provider(create: (_) => AgentsResponse()),
        Provider(create: (_) => NewsResponse()),
        ChangeNotifierProvider(create: (_) => AppProvider())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == PageRoutes.playVideoPage) {
          final String linkVideo = settings.arguments as String;
          return MaterialPageRoute(
              builder: (_) => PlayVideoScreen(linkVideo: linkVideo));
        }
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: PageRoutes.main,
      routes: _pageMap(),
    );
  }

  _pageMap() {
    return <String, WidgetBuilder>{
      PageRoutes.main: (BuildContext context) {
        return ChangeNotifierProvider(
            create: (_) => HomeViewModel(
                context.read(), context.read(), context.read(), context.read()),
            child: const MainLayout());
      },
      PageRoutes.productPage: (BuildContext context) {
        return ChangeNotifierProvider(
          create: (_) => HomeViewModel(
              context.read(), context.read(), context.read(), context.read()),
          child: const ProductScreen(),
        );
      },
      PageRoutes.colorPage: (BuildContext context) {
        return const ColorScreen();
      },
      PageRoutes.videoPage: (BuildContext context) {
        return const VideoScreen();
      },
      PageRoutes.registerTestDrivePage: (BuildContext context) {
        return const RegisterTestDriveScreen();
      },
      PageRoutes.installmentConsultingPage: (BuildContext context) {
        return const InstallmentConsultingScreen();
      },
      PageRoutes.productDetailsPage: (BuildContext context) {
        final product = ModalRoute.of(context)!.settings.arguments as Product;
        return ChangeNotifierProvider(
          create: (_) => DetailsViewModel(
            agencyResponse: context.read(),
            product: product,
          ),
          child: const ProductDetailsScreen(),
        );
      },
    };
  }
}
