import 'package:auto_group/enum.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class AppProvider extends ChangeNotifier {

  set navigateTo(MenuState menuState) {
    navigateToTab.add(menuState);
  }


  final BehaviorSubject<MenuState> navigateToTab = BehaviorSubject<MenuState>();

  Stream<MenuState> get navigateToTabStream => navigateToTab.stream;

  @override
  void dispose() {
    navigateToTab.close();
    super.dispose();
  }
}
