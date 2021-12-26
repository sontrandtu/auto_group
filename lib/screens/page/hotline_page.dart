import 'package:auto_group/components/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class HotlinePage extends StatelessWidget {
  const HotlinePage({Key? key}) : super(key: key);

  static String routeName = "/main/hotline";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Đặt lịch"),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectMenu: MenuState.hotline),
    );
  }
}
