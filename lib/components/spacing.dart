import 'package:flutter/widgets.dart';
import 'package:henry_flutter_portfolio/components/ui_scaler.dart';

// Margin
const EdgeInsets marginBottom12 = EdgeInsets.only(bottom: 12);
const EdgeInsets marginBottom24 = EdgeInsets.only(bottom: 24);
const EdgeInsets marginBottom40 = EdgeInsets.only(bottom: 40);

// Padding
const EdgeInsets paddingBottom24 = EdgeInsets.only(bottom: 24);

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({
    super.key,
    this.size = 8.0,
    this.alignment = Alignment.center,
  });

  final double size;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return UiScaler(
      alignment: alignment,
      child: SizedBox(
        width: size,
      ),
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({
    super.key,
    this.size = 8.0,
    this.alignment = Alignment.center,
  });

  final double size;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return UiScaler(
      alignment: alignment,
      child: SizedBox(
        height: size,
      ),
    );
  }
}
