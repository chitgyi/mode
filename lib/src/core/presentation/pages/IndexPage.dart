import 'package:flutter/material.dart';
import '../view_models/app.view_model.dart';
import '../views/view_builder.dart';
import '../../../features/categories/presentation/pages/CategoryPageContent.dart';
import '../../../features/discover/presentation/pages/DiscoverPageContent.dart';
import '../../../features/favorite/presentation/pages/FavoritePageContent.dart';
import '../../../features/music/presentation/pages/MusicPageContent.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewBuilder<AppViewModel>(
      onReady: (viewModel) => Scaffold(
        body: IndexedStack(
          index: viewModel.pageIndex,
          children: [
            DiscoverPageContent(),
            CategoryPageContent(),
            MusicPageContent(),
            FavoritePageContent(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: viewModel.pageIndex,
          onTap: (index) => viewModel.pageIndex = index,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.disc_full_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp),
              label: "Category",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: "Music",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
            )
          ],
        ),
      ),
    );
  }
}
