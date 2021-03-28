import 'package:flutter/material.dart';
import 'package:mode/core/blocs/app.bloc.dart';
import 'package:mode/core/di/app.di.dart';
import 'package:mode/core/navigator/back_dispatcher.dart';
import 'package:mode/core/widgets/custom_navigator_widget.dart';
import 'package:mode/features/music/presentation/navigator/music.navigator.dart';
import 'package:mode/features/playlist/presentation/navigator/playlist.navigator.dart';
import 'package:mode/features/profile/pages/profile.pages.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  final int currentPageIndex;
  HomePage({this.currentPageIndex = 0});
  @override
  Widget build(BuildContext context) {
    getIt<AppBloc>().selecedPageIndex = currentPageIndex;
    final backDispatcher = getIt<BackDiapatcher>();
    return Consumer<AppBloc>(
      builder: (context, appBloc, child) => Scaffold(
        body: IndexedStack(
          index: appBloc.selecedPageIndex,
          children: [
            CustomNavigatorWidget<MusicNavigator>(),
            CustomNavigatorWidget<PlaylistNavigator>(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            appBloc.setPageIndex(index);
            backDispatcher.mayBePopCurrentNestedPages();
            appBloc.setRouteInformation(context);
          },
          currentIndex: appBloc.selecedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play),
              label: 'Playlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
