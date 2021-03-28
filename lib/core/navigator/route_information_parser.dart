import 'package:flutter/material.dart';
import 'package:mode/core/navigator/pages.config.dart';
import 'package:mode/core/navigator/pages.enum.dart';
import 'package:mode/core/navigator/paths.const.dart';

class AppRouteInformationParser
    extends RouteInformationParser<PageConfiguration> {
  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.uiPage) {
      case Pages.Home:
        return const RouteInformation(location: HomePath);

      case Pages.Songs:
        return const RouteInformation(location: SongsPath);

      case Pages.Playlist:
        return const RouteInformation(location: PlaylistPath);

      case Pages.Profile:
        return const RouteInformation(location: ProfilePath);

      case Pages.Splash:
      default:
        return const RouteInformation(location: SplashPath);
    }
  }

  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);

    if (uri.pathSegments.isEmpty) {
      return SplashPageConfig;
    }

    final path = uri.path;
    print(path);

    switch (path) {
      case SplashPath:
        return SplashPageConfig;

      case PlaylistPath:
        return PlaylistPageConfig;

      case ProfilePath:
        return ProfilePageConfig;

      case SongsPath:
      case HomePath:
      default:
        return HomePageConfig;
    }
  }
}
