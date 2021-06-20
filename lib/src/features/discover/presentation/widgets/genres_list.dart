import 'package:flutter/material.dart';
import 'package:mode/src/core/utils/constants/color.constants.dart';
import 'package:mode/src/core/utils/constants/dim.constants.dart';
import 'package:mode/src/features/discover/presentation/widgets/genres_item.dart';
import 'package:mode/src/core/utils/extensions/extensions.dart';

class GenresView extends StatelessWidget {
  const GenresView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Genres",
              style: context.textTheme.headline2,
            ),
            Spacer(),
            Text(
              "See All",
              style: context.textTheme.headline3!
                  .copyWith(color: AppColors.Selected),
            ),
          ],
        ),
        const SizedBox(height: Dims.k_8),
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            spacing: 10,
            children: [
              ...List.generate(
                5,
                (index) => GenresItem(
                  iconData: Icons.music_note_outlined,
                  text: "Classic",
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
