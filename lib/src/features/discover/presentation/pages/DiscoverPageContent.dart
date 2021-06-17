import 'package:flutter/material.dart';

import '../../../../core/utils/constants/dim.constants.dart';
import '../widgets/promo_item.dart';
import '../widgets/search_bar.dart';

class DiscoverPageContent extends StatelessWidget {
  const DiscoverPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(Dims.k_14),
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        const SearchBar(),
        SizedBox(height: Dims.k_14),
        PromoItem(),
      ],
    );
  }
}
