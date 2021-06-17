import 'package:flutter/material.dart';
import '../../../utils/constants/color.constants.dart';
import '../../../utils/constants/dim.constants.dart';
import '../../../utils/constants/styles.constants.dart';
import 'package:mode/src/core/utils/extensions/context.extension.dart';

class FillButton extends StatelessWidget {
  const FillButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: Dims.k_10,
        vertical: Dims.k_8,
      ),
      decoration: BoxDecoration(
        color: AppColors.ButtonColor,
        boxShadow: kDefaultShadow,
        borderRadius: BorderRadius.circular(Dims.k_14),
      ),
      child: Text(
        text,
        style: context.textTheme.headline4,
      ),
    );
  }
}
