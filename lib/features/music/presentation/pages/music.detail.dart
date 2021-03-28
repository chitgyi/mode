import 'package:flutter/material.dart';
import 'package:mode/core/di/app.di.dart';
import 'package:mode/features/music/presentation/navigator/music.navigator.dart';
import 'package:mode/core/navigator/router.delegate.dart';
import 'package:mode/features/music/presentation/pages/artist.detail.dart';

class MusicDetailPage extends StatelessWidget {
  const MusicDetailPage(this.id);
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30.0,
        leading: BackButton(
          onPressed: () => MusicNavigator.of(context).pop(),
        ),
        title: Text("Music Detail"),
      ),
      body: Center(
        child: TextButton(
          child: Text("Navigate to Artist Detail with App Router"),
          onPressed: () => getIt<AppRouterDelegate>().pushPage(
            MaterialPage(
              child: ArtistDetailPage(),
            ),
          ),
        ),
      ),
    );
  }
}
