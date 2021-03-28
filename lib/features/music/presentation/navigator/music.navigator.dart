import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mode/core/navigator/custom_navigator.dart';
import 'package:mode/features/music/presentation/pages/music.page.dart';
import 'package:provider/provider.dart';

class MusicNavigator extends CustomNavigator {
  static MusicNavigator of(BuildContext context) {
    return Provider.of<MusicNavigator>(context, listen: false);
  }

  MusicNavigator() {
    //default page
    pages.add(
      MaterialPage(
        child: MusicPage(),
        name: 'music',
        key: ValueKey('music'),
      ),
    );
  }
}
