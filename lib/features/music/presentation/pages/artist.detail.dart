import 'package:flutter/material.dart';
import 'package:mode/core/di/app.di.dart';
import 'package:mode/core/navigator/router.delegate.dart';

class ArtistDetailPage extends StatelessWidget {
  const ArtistDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => getIt<AppRouterDelegate>().pop(),
        ),
        title: Text("Artist Detail"),
      ),
      body: Center(
        child: Text("Artist Detail"),
      ),
    );
  }
}
