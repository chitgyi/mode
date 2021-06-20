import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mode/src/core/utils/constants/dim.constants.dart';
import 'package:mode/src/core/utils/constants/svg_paths.constants.dart';

class DiscoverToolBar extends StatelessWidget {
  const DiscoverToolBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          SvgPaths.Logo,
          width: 45,
          height: 45,
        ),
        SizedBox(
          width: Dims.k_10,
        ),
        Text(
          "MODE",
          style: GoogleFonts.molle(
            fontSize: 18,
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications),
        ),
      ],
    );
  }
}
