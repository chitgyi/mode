import 'package:flutter/cupertino.dart';
import 'package:mode/core/blocs/app.bloc.dart';
import 'package:mode/core/navigator/custom_navigator.dart';
import 'package:mode/core/navigator/router.delegate.dart';

class BackDiapatcher extends RootBackButtonDispatcher {
  final AppRouterDelegate appRouterDelegate;

  /// order by CustomNavigatorWidgets of `core/pages/home.page.dart`
  final List<CustomNavigator> nestedNavigators;
  final AppBloc appBloc;
  BackDiapatcher({
    required this.appRouterDelegate,
    required this.nestedNavigators,
    required this.appBloc,
  });

  // if return true that will be poped, if not that will not be poped
  @override
  Future<bool> didPopRoute() async {
    try {
      if (appRouterDelegate.pages.length > 1) {
        appRouterDelegate.pop();
        return true;
      }

      final currentRechedNavigaotr = nestedNavigators[appBloc.selecedPageIndex];
      final currentNestedNavigatorIndex =
          nestedNavigators.indexOf(currentRechedNavigaotr);

      if (currentRechedNavigaotr.pages.length > 1) {
        currentRechedNavigaotr.pop();
        return true;
      } else if (currentNestedNavigatorIndex == appBloc.selecedPageIndex &&
          appBloc.selecedPageIndex != 0) {
        appBloc.setPageIndex(0);
        return true;
      }
    } catch (e) {
      /// if custom navigator not found
      appBloc.setPageIndex(0);
      return true;
    }

    return false;
  }

  int _currentPageIndex = 0;

  void mayBePopCurrentNestedPages() {
    try {
      final currentRechedNavigaotr = nestedNavigators[appBloc.selecedPageIndex];
      final currentNestedNavigatorIndex =
          nestedNavigators.indexOf(currentRechedNavigaotr);
      if (currentNestedNavigatorIndex == appBloc.selecedPageIndex &&
          _currentPageIndex == appBloc.selecedPageIndex) {
        currentRechedNavigaotr.pop();
        _currentPageIndex = -1;
      } else {
        _currentPageIndex = appBloc.selecedPageIndex;
      }
    } catch (e) {}
  }
}
