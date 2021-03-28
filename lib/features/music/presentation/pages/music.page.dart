import 'package:flutter/material.dart';
import 'package:mode/features/music/presentation/navigator/music.navigator.dart';
import 'package:mode/core/navigator/router.delegate.dart';
import 'package:mode/features/music/presentation/pages/music.detail.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("pop");
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipOval(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzM014_d4f1GW0JrA65nfFrlKpuNrNgpEMnQ&usqp=CAU",
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text("MODE"),
          actions: [
            IconButton(
              icon: Icon(Icons.search_rounded),
              onPressed: () => AppRouterDelegate.of(context).pop(),
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: TextButton(
            child: Text("Navigate to Music Detail with Music Navigator"),
            onPressed: () => MusicNavigator.of(context).push(
              MaterialPage(
                child: MusicDetailPage(5),
                name: '/music/5',
                key: ValueKey('/music/5'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
