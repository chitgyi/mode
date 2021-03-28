import 'package:flutter/material.dart';
import 'package:mode/core/blocs/app.bloc.dart';
import 'package:mode/core/di/app.di.dart';
import 'package:mode/core/navigator/back_dispatcher.dart';
import 'package:mode/core/utils/theme.contants.dart';
import 'package:mode/features/music/presentation/navigator/music.navigator.dart';
import 'package:mode/features/playlist/presentation/navigator/playlist.navigator.dart';
import 'package:mode/core/navigator/route_information_parser.dart';
import 'package:mode/core/navigator/router.delegate.dart';
import 'package:provider/provider.dart';

main() {
  registerNavigatorDI();
  runApp(ModeApp());
}

class ModeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => getIt<AppBloc>()),
        ChangeNotifierProvider(create: (_) => getIt<AppRouterDelegate>()),
        ChangeNotifierProvider(create: (_) => getIt<MusicNavigator>()),
        ChangeNotifierProvider(create: (_) => getIt<PlaylistNavigator>()),
      ],
      child: MaterialApp.router(
        backButtonDispatcher: getIt<BackDiapatcher>(),
        routerDelegate: getIt<AppRouterDelegate>(),
        routeInformationParser: AppRouteInformationParser(),
        title: "MODE APP",
        debugShowCheckedModeBanner: false,
        theme: kDefaultTheme,
        darkTheme: kDartTheme,
      ),
    );
  }
}
