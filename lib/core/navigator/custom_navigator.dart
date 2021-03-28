import 'package:flutter/material.dart';

abstract class CustomNavigator with ChangeNotifier {
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  final List<Page> pages = [];

  Future<dynamic> push(MaterialPage materialPage) async {
    pages.add(materialPage);
    notifyListeners();
  }

  void pop() {
    if (pages.isNotEmpty && pages.length > 1) {
      pages.removeLast();
      notifyListeners();
    } else {
      print("You reached root page");
    }
  }

  bool onPopPage(Route route, result) {
    final success = route.didPop(result);
    notifyListeners();
    return success;
  }
}
