import 'package:flutter/material.dart';
import 'package:mode/src/core/utils/constants/color.constants.dart';
import 'package:mode/src/core/utils/constants/dim.constants.dart';
import 'package:mode/src/core/utils/extensions/context.extension.dart';

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
        const SearchBar()
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dims.k_10),
      decoration: BoxDecoration(
        color: AppColors.Accent,
        borderRadius: BorderRadius.circular(
          Dims.k_8,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: context.textTheme.bodyText1,
              decoration: InputDecoration.collapsed(
                hintText: 'Search...',
                hintStyle: context.textTheme.bodyText2!
                    .copyWith(color: AppColors.Grey5),
              ),
            ),
          ),
          SizedBox(
            width: Dims.k_10,
          ),
          Icon(
            Icons.search,
          )
        ],
      ),
    );
  }
}
