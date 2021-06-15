import 'package:flutter/material.dart';
import 'package:mode/src/features/discover/presentation/pages/DiscoverPageContent.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: [
          DiscoverPageContent(),
        ],
      ),
    );
  }
}
