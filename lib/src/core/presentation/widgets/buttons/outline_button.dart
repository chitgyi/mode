import 'package:flutter/material.dart';

import '../../../utils/constants/color.constants.dart';
import '../../../utils/constants/dim.constants.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
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
        border: Border.all(
          color: AppColors.ButtonColor,
        ),
        borderRadius: BorderRadius.circular(Dims.k_14),
      ),
      child: Text(text),
    );
  }
}
