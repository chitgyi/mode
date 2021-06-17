import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/presentation/widgets/buttons/fill_button.dart';
import '../../../../core/presentation/widgets/buttons/outline_button.dart';
import '../../../../core/utils/constants/color.constants.dart';
import '../../../../core/utils/constants/dim.constants.dart';
import '../../../../core/utils/constants/styles.constants.dart';
import '../../../../core/utils/constants/svg_paths.constants.dart';
import '../../../../core/utils/extensions/context.extension.dart';

class PromoItem extends StatelessWidget {
  const PromoItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dims.k_10),
      decoration: BoxDecoration(
        color: AppColors.Accent,
        borderRadius: BorderRadius.circular(Dims.k_10),
        boxShadow: kDefaultShadow,
      ),
      child: Row(
        children: [
          SvgPicture.asset(SvgPaths.Promo),
          SizedBox(
            width: Dims.k_10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Upgrade Your Plan",
                  style: context.textTheme.headline3,
                ),
                SizedBox(
                  height: Dims.k_8,
                ),
                Text(
                  "70% Discount for 1 Year Subscriptin",
                  style: context.textTheme.subtitle1,
                ),
                SizedBox(
                  height: Dims.k_10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: FillButton(
                        text: "Upgrade",
                      ),
                    ),
                    SizedBox(
                      width: Dims.k_8,
                    ),
                    Expanded(
                      child: CustomOutlinedButton(
                        text: "Try it",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
