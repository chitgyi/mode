import 'package:mode/core/navigator/pages.enum.dart';
import 'package:mode/core/navigator/paths.const.dart';

class PageConfiguration {
  final String key;
  final String path;
  final Pages uiPage;

  const PageConfiguration({
    required this.key,
    required this.path,
    required this.uiPage,
  });
}

const PageConfiguration SplashPageConfig = PageConfiguration(
  key: 'Splash',
  path: SplashPath,
  uiPage: Pages.Splash,
);

const PageConfiguration HomePageConfig = PageConfiguration(
  key: 'Home',
  path: HomePath,
  uiPage: Pages.Home,
);

const PageConfiguration LoginPageConfig = PageConfiguration(
  key: 'Login',
  path: LoginPath,
  uiPage: Pages.Login,
);

const PageConfiguration RegisterPageConfig = PageConfiguration(
  key: 'Register',
  path: RegisterPath,
  uiPage: Pages.Register,
);

const PageConfiguration SongsPageConfig = PageConfiguration(
  key: 'Songs',
  path: SongsPath,
  uiPage: Pages.Songs,
);

const PageConfiguration SongDetailsPageConfig = PageConfiguration(
  key: 'Song Details',
  path: SongDetailPath,
  uiPage: Pages.SongDetails,
);

const PageConfiguration PlaylistPageConfig = PageConfiguration(
  key: 'Playlist',
  path: PlaylistPath,
  uiPage: Pages.Playlist,
);

const PageConfiguration ProfilePageConfig = PageConfiguration(
  key: 'Profile',
  path: ProfilePath,
  uiPage: Pages.Profile,
);

const PageConfiguration SettingPageConfig = PageConfiguration(
  key: 'Setting',
  path: SettingsPath,
  uiPage: Pages.Settting,
);
