import 'package:auto_group/response/agents_response.dart';
import 'package:auto_group/response/categories_response.dart';
import 'package:auto_group/response/news_response.dart';
import 'package:auto_group/response/products_response.dart';
import 'package:auto_group/routes.dart';
import 'package:auto_group/screens/home_screen/home_screen.dart';
import 'package:auto_group/screens/main_page/main_layout.dart';
import 'package:auto_group/screens/play_video/play_video_screen.dart';
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
      onGenerateRoute: (RouteSettings settings){
        if(settings.name == PlayVideoScreen.routeName){
          final String linkVideo = settings.arguments as String;
          return MaterialPageRoute(builder: (_) => PlayVideoScreen(linkVideo: linkVideo));
        }
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
