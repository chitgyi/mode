import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mode/src/core/presentation/widgets/icons/icon_with_text.dart';
import 'package:mode/src/core/utils/constants/color.constants.dart';
import 'package:mode/src/core/utils/constants/dim.constants.dart';

class ArtistList extends StatelessWidget {
  const ArtistList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: Dims.k_14),
      itemCount: 10,
      itemBuilder: (cxt, index) => ArtistItem(),
    );
  }
}

class ArtistItem extends StatelessWidget {
  const ArtistItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dims.k_10),
      margin: EdgeInsets.only(right: Dims.k_10),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: AppColors.Accent,
        borderRadius: BorderRadius.circular(Dims.k_10),
      ),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            padding: EdgeInsets.all(Dims.k_2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.Selected,
                  Colors.white,
                ],
              ),
            ),
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl:
                    "https://thetrinityvoice.com/wp-content/uploads/2018/03/Screen-Shot-2018-03-15-at-2.28.14-PM.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: Dims.k_10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Khalid",
                ),
                SizedBox(
                  height: Dims.k_8,
                ),
                IconWithText(
                  iconData: Icons.favorite,
                  text: "1k Likes",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
