import 'package:get_it/get_it.dart';
import 'package:mode/core/blocs/app.bloc.dart';
import 'package:mode/core/navigator/back_dispatcher.dart';
import 'package:mode/core/navigator/router.delegate.dart';
import 'package:mode/features/music/presentation/navigator/music.navigator.dart';
import 'package:mode/features/playlist/presentation/navigator/playlist.navigator.dart';

final getIt = GetIt.instance;
void registerNavigatorDI() {
  getIt
    ..registerSingleton<AppRouterDelegate>(AppRouterDelegate())
    ..registerSingleton<AppBloc>(AppBloc())
    ..registerSingleton<MusicNavigator>(MusicNavigator())
    ..registerSingleton<PlaylistNavigator>(PlaylistNavigator());

  getIt.registerSingleton<BackDiapatcher>(BackDiapatcher(
    appRouterDelegate: getIt<AppRouterDelegate>(),
    nestedNavigators: [
      getIt<MusicNavigator>(),
      getIt<PlaylistNavigator>(),
    ],
    appBloc: getIt<AppBloc>(),
  ));
}
