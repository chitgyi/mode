import 'package:flutter/material.dart';
import 'package:mode/src/core/presentation/widgets/icons/icon_with_text.dart';
import 'package:mode/src/core/utils/constants/color.constants.dart';
import 'package:mode/src/core/utils/constants/dim.constants.dart';
import 'package:mode/src/core/utils/extensions/extensions.dart';

class ExploreList extends StatelessWidget {
  const ExploreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: Dims.k_10),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => ExploreItem(),
    );
  }
}

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: Dims.k_8),
        padding: EdgeInsets.all(Dims.k_10),
        decoration: BoxDecoration(
          color: AppColors.Accent,
          borderRadius: BorderRadius.circular(Dims.k_10),
        ),
        width: MediaQuery.of(context).size.width * 0.85,
        child: Row(
          children: [
            Container(
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dims.k_8),
                border: Border.all(
                  color: AppColors.Selected,
                ),
              ),
            ),
            SizedBox(
              width: Dims.k_8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top 100 Songs",
                    style: context.textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: Dims.k_4,
                  ),
                  Text(
                    "15 June, 2021",
                    style: context.textTheme.subtitle1!.copyWith(
                      color: AppColors.UnSelected,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      IconWithText(
                        text: "Play Now",
                        iconData: Icons.play_circle,
                      ),
                      Spacer(),
                      IconWithText(
                        text: "1k Views",
                        iconData: Icons.remove_red_eye,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
