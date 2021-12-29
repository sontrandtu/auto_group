import 'package:auto_group/base/app_provider.dart';
import 'package:auto_group/enum.dart';
import 'package:auto_group/page_routes.dart';
import 'package:auto_group/screens/home_screen/home_screen.dart';
import 'package:auto_group/screens/home_screen/home_view_model.dart';
import 'package:auto_group/screens/page/account_page.dart';
import 'package:auto_group/screens/page/booking_page.dart';
import 'package:auto_group/screens/page/hotline_page.dart';
import 'package:auto_group/screens/page/post_page.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({Key? key}) : super(key: key);

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
  List<MenuState> menus = MenuState.values;
  MenuState currentMenuState = MenuState.home;

  @override
  void initState() {
    super.initState();
    context.read<AppProvider>().navigateToTabStream.listen((event) {
      currentMenu = event;
    });
  }

  Widget navigationItem(MenuState menuState, IconData icon) {
    return MaterialButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      minWidth: 40,
      onPressed: () {
        currentMenu = menuState;
        //print(currentMenuState);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color:
                currentMenuState != menuState ? kSecondaryColor : Colors.black,
            size: 30,
          ),
          const SizedBox(height: 2),
          Text(
            menuState.label,
            style: TextStyle(
              color: currentMenuState != menuState
                  ? kSecondaryColor
                  : Colors.black,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  set currentMenu(MenuState value) {
    currentMenuState = value;
    _currentIndex = menus.indexOf(value);
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
          bookingNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        if (_currentIndex == 2) {
          postNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        if (_currentIndex == 3) {
          hotlineNav.currentState?.maybePop().then((stackHasItem) {
            if (!stackHasItem) {}
          });
        }
        if (_currentIndex == 4) {
          accountNav.currentState?.maybePop().then((stackHasItem) {
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
                initialRoute: PageRoutes.home,
                onGenerateRoute: (RouteSettings settings) {
                  WidgetBuilder builder;
                  switch (settings.name) {
                    case PageRoutes.home:
                      builder = (BuildContext _) => ChangeNotifierProvider(
                            create: (_) => HomeViewModel(
                              context.read(),
                              context.read(),
                              context.read(),
                            ),
                            child: const HomeScreen(),
                          );
                      break;
                    default:
                      throw Exception("Home invalid Route: ${settings.name}");
                  }
                  return MaterialPageRoute(
                    builder: builder,
                    settings: settings,
                  );
                }),
            Navigator(
              key: bookingNav,
              initialRoute: PageRoutes.booking,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => const BookingPage()),
            ),
            Navigator(
              key: postNav,
              initialRoute: PageRoutes.post,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => const PostPage()),
            ),
            Navigator(
              key: hotlineNav,
              initialRoute: PageRoutes.hotline,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => const HotlinePage()),
            ),
            Navigator(
              key: accountNav,
              initialRoute: PageRoutes.account,
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => const AccountPage()),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: BottomAppBar(
            color: kPrimaryColor,
            shape: const CircularNotchedRectangle(),
            notchMargin: 4,
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    navigationItem(MenuState.home, Icons.home_outlined),
                    navigationItem(
                        MenuState.booking, Icons.calendar_today_outlined),
                    navigationItem(MenuState.post, Icons.message_outlined),
                    navigationItem(
                        MenuState.hotline, Icons.wifi_calling_3_outlined),
                    navigationItem(
                        MenuState.account, Icons.account_circle_outlined),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
