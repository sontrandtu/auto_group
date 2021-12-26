import 'package:auto_group/enum.dart';
import 'package:auto_group/screens/home_screen/home_screen.dart';
import 'package:auto_group/screens/page/account_page.dart';
import 'package:auto_group/screens/page/booking_page.dart';
import 'package:auto_group/screens/page/hotline_page.dart';
import 'package:auto_group/screens/page/post_page.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    Key? key,
    @required this.selectMenu,
  }) : super(key: key);

  final MenuState? selectMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: Color(0xFFD20000),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
              child: Column(
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 30,
                    color: MenuState.home == selectMenu
                        ? Color(0xFF000000)
                        : Color(0xFFFFFFFF),
                  ),
                  Text(
                    "Trang chủ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MenuState.home == selectMenu
                          ? Color(0xFF000000)
                          : Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, BookingPage.routeName),
              child: Column(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 30,
                    color: MenuState.booking == selectMenu
                        ? Color(0xFF000000)
                        : Color(0xFFFFFFFF),
                  ),
                  Text(
                    "Đặt lịch",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MenuState.booking == selectMenu
                          ? Color(0xFF000000)
                          : Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, PostPage.routeName),
              child: Column(
                children: [
                  Icon(
                    Icons.message_outlined,
                    size: 30,
                    color: MenuState.post == selectMenu
                        ? Color(0xFF000000)
                        : Color(0xFFFFFFFF),
                  ),
                  Text(
                    "Đăng tin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MenuState.post == selectMenu
                          ? Color(0xFF000000)
                          : Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, HotlinePage.routeName),
              child: Column(
                children: [
                  Icon(
                    Icons.wifi_calling_3_outlined,
                    size: 30,
                    color: MenuState.hotline == selectMenu
                        ? Color(0xFF000000)
                        : Color(0xFFFFFFFF),
                  ),
                  Text(
                    "Hotline",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MenuState.hotline == selectMenu
                          ? Color(0xFF000000)
                          : Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => Navigator.pushNamed(context, AccountPage.routeName),
              child: Column(
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: MenuState.account == selectMenu
                        ? Color(0xFF000000)
                        : Color(0xFFFFFFFF),
                  ),
                  Text(
                    "Tài khoản",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: MenuState.account == selectMenu
                          ? Color(0xFF000000)
                          : Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
