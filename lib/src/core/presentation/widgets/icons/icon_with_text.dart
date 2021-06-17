import 'package:flutter/material.dart';
import 'package:mode/src/core/utils/constants/color.constants.dart';
import 'package:mode/src/core/utils/constants/dim.constants.dart';
import 'package:mode/src/core/utils/extensions/extensions.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: AppColors.UnSelected,
        ),
        SizedBox(
          width: Dims.k_8,
        ),
        Text(
          text,
          style: context.textTheme.subtitle1!.copyWith(
            color: AppColors.UnSelected,
          ),
        )
      ],
    );
  }
}
