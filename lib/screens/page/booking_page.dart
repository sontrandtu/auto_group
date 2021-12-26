import 'package:auto_group/components/custom_bottom_nav_bar.dart';
import 'package:auto_group/enum.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  static String routeName = "/main/booking";
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Đặt lịch"),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectMenu: MenuState.booking),
    );
  }
}
