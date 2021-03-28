import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mode/core/navigator/custom_navigator.dart';
import 'package:mode/features/playlist/presentation/pages/playlist.page.dart';
import 'package:provider/provider.dart';

class PlaylistNavigator extends CustomNavigator {
  static PlaylistNavigator of(BuildContext context) {
    return Provider.of<PlaylistNavigator>(context, listen: false);
  }

  PlaylistNavigator() {
    //default page
    pages.add(
      MaterialPage(
        child: PlaylistPage(),
        name: 'playlist',
        key: ValueKey('playlist'),
      ),
    );
  }
}
