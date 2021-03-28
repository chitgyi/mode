import 'package:flutter/material.dart';
import 'package:mode/core/di/app.di.dart';
import 'package:mode/features/playlist/presentation/navigator/playlist.navigator.dart';

class PlaylistDetailPage extends StatelessWidget {
  const PlaylistDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playlist Detail"),
        leading: BackButton(
          onPressed: () => getIt<PlaylistNavigator>().pop(),
        ),
      ),
      body: Center(
        child: Text("Playlist Detail"),
      ),
    );
  }
}
