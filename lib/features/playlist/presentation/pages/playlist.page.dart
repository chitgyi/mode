import 'package:flutter/material.dart';
import 'package:mode/core/di/app.di.dart';
import 'package:mode/features/playlist/presentation/navigator/playlist.navigator.dart';
import 'package:mode/features/playlist/presentation/pages/playlist_detail.page.dart';

class PlaylistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Text("Navigate to Playlist Detail with Playlist Navigator"),
        onPressed: () => getIt<PlaylistNavigator>().push(
          MaterialPage(
            child: PlaylistDetailPage(),
          ),
        ),
      ),
    );
  }
}
