import 'package:flutter/material.dart';
import 'package:mode/src/core/utils/constants/color.constants.dart';
import 'package:mode/src/core/utils/constants/dim.constants.dart';
import 'package:mode/src/core/utils/extensions/extensions.dart';

class GenresItem extends StatelessWidget {
  const GenresItem({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Dims.k_8),
      padding: EdgeInsets.symmetric(
        horizontal: Dims.k_14,
        vertical: Dims.k_8,
      ),
      decoration: BoxDecoration(
        color: AppColors.AccentDark,
        borderRadius: BorderRadius.circular(
          Dims.k_8,
        ),
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: Dims.k_8,
        children: [
          Icon(
            this.iconData,
            color: AppColors.UnSelected,
          ),
          Text(
            this.text,
            style: context.textTheme.subtitle1!.copyWith(
              color: AppColors.UnSelected,
            ),
          )
        ],
      ),
    );
  }
}
