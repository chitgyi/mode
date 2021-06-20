import 'package:flutter/material.dart';
import 'package:mode/src/features/discover/presentation/widgets/artist_list.dart';
import 'package:mode/src/features/discover/presentation/widgets/discover_tool_bar.dart';
import 'package:mode/src/features/discover/presentation/widgets/explore_list.dart';
import 'package:mode/src/features/discover/presentation/widgets/genres_list.dart';

import '../../../../core/utils/constants/dim.constants.dart';
import '../widgets/promo_item.dart';
import 'package:mode/src/core/utils/extensions/extensions.dart';

class DiscoverPageContent extends StatelessWidget {
  const DiscoverPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: Dims.k_14),
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        // const SearchBar().pX(Dims.k_14),
        const DiscoverToolBar().pX(Dims.k_14),
        const SizedBox(height: Dims.k_18),
        const PromoItem().pX(Dims.k_14),
        const SizedBox(height: Dims.k_18),
        Text("Explore", style: context.textTheme.headline2).pX(Dims.k_14),
        const SizedBox(height: Dims.k_8),
        const SizedBox(height: 100, child: ExploreList()),
        const SizedBox(height: Dims.k_18),
        Text("Top Artists", style: context.textTheme.headline2).pX(Dims.k_14),
        const SizedBox(height: Dims.k_8),
        const SizedBox(height: 90, child: ArtistList()),
        const SizedBox(height: Dims.k_18),
        const GenresView().pX(Dims.k_14)
      ],
    );
  }
}
