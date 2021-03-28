import 'package:flutter/material.dart';
import 'package:mode/core/navigator/back_button_hadler.dart';
import 'package:mode/core/navigator/pages.config.dart';
import 'package:mode/core/navigator/pages.enum.dart';
import 'package:mode/core/pages/home.page.dart';
import 'package:mode/core/pages/splash.dart';
import 'package:provider/provider.dart';

/*
1.build
2.SetNewRoute
3.build
4.Current Config
*/

class AppRouterDelegate extends RouterDelegate<PageConfiguration>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<PageConfiguration>,
        BackButtonHandler {
  final List<Page> _pages = [];
  PageConfiguration _pageConfiguration = SplashPageConfig;

  AppRouterDelegate() {
    push(SplashPageConfig);
  }

  static AppRouterDelegate of(BuildContext context) {
    return Provider.of<AppRouterDelegate>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: List.of(_pages),
      onPopPage: _onPopPage,
    );
  }

  List<Page> get pages => _pages;

  @override
  PageConfiguration? get currentConfiguration => _pageConfiguration;

  @override
  GlobalKey<NavigatorState> get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) async {
    _pages.clear();
    push(configuration);
  }

  push(PageConfiguration pageConfiguration, {Object? args}) {
    if (_pages.isNotEmpty && _pages.last.name == pageConfiguration.path) return;
    _pages.add(
      MaterialPage(
        child: _cretePage(pageConfiguration.uiPage, args: args),
        key: ValueKey(pageConfiguration.key),
        name: pageConfiguration.path,
      ),
    );
    _pageConfiguration = pageConfiguration;
    if (_pages.length != 1) notifyListeners();
  }

  void pushAndReplace(PageConfiguration pageConfiguration, {Object? args}) {
    _pages.clear();
    push(pageConfiguration, args: args);
    notifyListeners();
  }

  void pushPage(MaterialPage page) {
    _pages.add(page);
    notifyListeners();
  }

  void pushAndReplacePage(MaterialPage page) {
    _pages.clear();
    _pages.add(page);
    notifyListeners();
  }

  void pop() {
    if (_pages.length > 1) {
      _pages.removeLast();
      notifyListeners();
    } else {
      print("You reached root page");
    }
  }

  Widget _cretePage(Pages pages, {Object? args}) {
    switch (pages) {
      case Pages.Splash:
        return SplashPage();

      case Pages.Playlist:
        return HomePage(
          currentPageIndex: 1,
        );

      case Pages.Profile:
        return HomePage(
          currentPageIndex: 2,
        );

      default:
        return HomePage();
    }
  }

  bool _onPopPage(Route route, result) {
    final success = route.didPop(result);
    if (success) notifyListeners();
    return success;
  }

  @override
  bool didPopRoute() {
    if (_pages.isNotEmpty && _pages.length > 1) {
      pop();
      return true;
    } else {
      return false;
    }
  }
}
