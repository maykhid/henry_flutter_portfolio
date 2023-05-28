import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HoverIcon extends StatefulWidget {
  const HoverIcon({
    super.key,
    required this.iconPath,
    required this.onPressed,
    this.onHover,
  });

  final String iconPath;
  final Function onPressed;
  final Function(bool)? onHover;

  @override
  State<HoverIcon> createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  Color hoverColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    final String iconPath = widget.iconPath;
    final Function onPressed = widget.onPressed;
    final Function(bool)? onHover = widget.onHover;

    return InkWell(
      onTap: () => onPressed,
      onHover: onHover ??
          (isHovering) {
            setState(
              () => hoverColor = isHovering ? Colors.black : Colors.grey, // using this as default for the app
            );
          },
      child: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(hoverColor, BlendMode.srcIn),
      ),
    );
  }
}
