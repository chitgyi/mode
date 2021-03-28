import 'package:flutter/material.dart';
import 'package:mode/core/navigator/custom_navigator.dart';
import 'package:provider/provider.dart';

class CustomNavigatorWidget<T extends CustomNavigator> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<T>(
      builder: (context, navigator, child) => Navigator(
        key: navigator.navigatorKey,
        pages: navigator.pages,
        onPopPage: navigator.onPopPage,
      ),
    );
  }
}
