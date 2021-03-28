import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final Color bgColor;
  const GlassContainer({
    required this.child,
    this.borderRadius = BorderRadius.zero,
    this.bgColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: bgColor.withOpacity(0.2),
            border: Border.all(
              width: 1.4,
              color: bgColor.withOpacity(0.3),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
