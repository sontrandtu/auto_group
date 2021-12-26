import 'package:auto_group/base/app_provider.dart';
import 'package:auto_group/enum.dart';
import 'package:auto_group/screens/home_screen/home_screen.dart';
import 'package:auto_group/screens/page/account_page.dart';
import 'package:auto_group/screens/page/booking_page.dart';
import 'package:auto_group/screens/page/hotline_page.dart';
import 'package:auto_group/screens/page/post_page.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

  static String routeName = "/main";

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout>
    with AutomaticKeepAliveClientMixin {
  int _currentIndex = 0;
  final homeNav = GlobalKey<NavigatorState>();
  final bookingNav = GlobalKey<NavigatorState>();
  final postNav = GlobalKey<NavigatorState>();
  final hotlineNav = GlobalKey<NavigatorState>();
  final accountNav = GlobalKey<NavigatorState>();
  List<MenuState> menu = MenuState.values;
  MenuState currentMenuState = MenuState.home;

  @override
  void initState() {
    super.initState();
    context.read<AppProvider>().navigateToTabStream.listen((event) {
      currentMenu = event;
    });
  }
  Widget navigationItem(MenuState menuState, String icon) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      minWidth: 40,
      onPressed: () {
        currentMenu = menuState;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: currentMenuState != menuState ? kSecondaryColor : kPrimaryColor,
            height: 20,
          ),
          const SizedBox(height: 2),
          //Text(menuState.label, style: context.textStyle(color: currentTabType != tabType ? AppColors.secondaryColor : AppColors.textWhite).size11.fontRobotoSlab),
        ],
      ),
    );
  }

  set currentMenu(MenuState value) {
    currentMenu = value;
    _currentIndex = menu.indexOf(value);
    switch (value) {
      case MenuState.home:
        break;
      case MenuState.booking:
        break;
      case MenuState.post:
        break;
      case MenuState.hotline:
        break;
      case MenuState.account:
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex == 0) {
          homeNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        if (_currentIndex == 1) {
          homeNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        if (_currentIndex == 2) {
          homeNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        if (_currentIndex == 3) {
          homeNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        if (_currentIndex == 4) {
          homeNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        return false;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            Navigator(
              key: homeNav,
              initialRoute: HomeScreen.routeName,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
            Navigator(
              key: bookingNav,
              initialRoute: BookingPage.routeName,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => BookingPage()),
            ),
            Navigator(
              key: postNav,
              initialRoute: PostPage.routeName,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => PostPage()),
            ),
            Navigator(
              key: hotlineNav,
              initialRoute: HotlinePage.routeName,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => HotlinePage()),
            ),
            Navigator(
              key: accountNav,
              initialRoute: AccountPage.routeName,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => AccountPage()),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          backgroundColor: kPrimaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Trang chủ",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: "Đặt lịch",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: "Đăng tin",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wifi_calling_3_outlined),
              label: "Hotline",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: "Tài khoản",
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
