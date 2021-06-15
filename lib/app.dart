import 'package:flutter/material.dart';
import 'src/core/presentation/pages/IndexPage.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MODE',
      home: IndexPage(),
    );
  }
}
