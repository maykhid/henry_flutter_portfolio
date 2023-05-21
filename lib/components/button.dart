import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components.dart';


class CustomButton extends StatelessWidget {
  final Function onPressed;
  final double width;
  final double? height;
  final double borderRadius;
  final Color borderColor;
  final Color backgroundColor;
  final Color? foregroundColor;
  final Color buttonTextColor;
  final bool active;
  final bool isLoading;
  final Widget child;
  final Color loadingColor;
  // ignore: use_key_in_widget_constructors
  const CustomButton({
    required this.onPressed,
    this.width = 100,
    this.height,
    this.foregroundColor,
    this.borderRadius = 15,
    this.backgroundColor = Colors.black,
    required this.child,
    this.buttonTextColor = const Color(0xffFFFFFF),
    this.borderColor = Colors.black,
    this.active = true,
    this.loadingColor = Colors.white,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: buttonTextColor,
      backgroundColor: backgroundColor,
      textStyle: bodyTextBold,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );

    return SizedBox(
      height: height ?? 50,
      width: width,
      child: TextButton(
          style: style,
          onPressed: () {
            onPressed();
          },
          child: isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: loadingColor,
                        strokeWidth: 1,
                      ),
                    ),
                    const HorizontalSpace(
                      size: 15,
                    ),
                    Text(''),
                  ],
                )
              : child),
    );
  }
}
