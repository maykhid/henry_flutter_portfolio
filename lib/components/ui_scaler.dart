import 'dart:math';

import 'package:flutter/widgets.dart';

class UiScaler extends StatelessWidget {
  const UiScaler({
    super.key,
    required this.child,
    required this.alignment,
    this.referenceHeight = 500,
  });

  final int referenceHeight;
  final Widget child;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double scale = min(screenSize.width / referenceHeight, 1.0);
    return Transform.scale(
      scale: scale,
      alignment: alignment,
      child: child,
    );
  }
}
