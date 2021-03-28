import 'package:flutter/material.dart';
import 'package:mode/core/navigator/pages.config.dart';
import 'package:mode/core/navigator/router.delegate.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: Text("Splash Page"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.login),
        onPressed: () {
          AppRouterDelegate.of(context).pushAndReplace(HomePageConfig);
        },
      ),
    );
  }
}
