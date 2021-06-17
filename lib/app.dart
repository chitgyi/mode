import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/core/presentation/pages/IndexPage.dart';
import 'src/core/presentation/view_models/app.view_model.dart';
import 'src/core/utils/theme/dark.theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppViewModel(),
        )
      ],
      child: MaterialApp(
        title: 'MODE',
        debugShowCheckedModeBanner: false,
        home: IndexPage(),
        theme: kDarkThemeData,
      ),
    );
  }
}
