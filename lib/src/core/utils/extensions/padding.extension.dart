import 'package:flutter/cupertino.dart';

extension MyPadding on Widget {
  Widget pX(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );
  Widget pY(double padding) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this,
      );
}
