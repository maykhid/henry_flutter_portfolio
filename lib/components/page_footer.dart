import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components.dart';

class PageFooter extends StatefulWidget {
  const PageFooter({
    super.key,
  });

  @override
  State<PageFooter> createState() => _PageFooterState();
}

class _PageFooterState extends State<PageFooter> {
  Color hoverColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return UiScaler(
      alignment: Alignment.centerLeft,
      child: Container(
        width: double.maxFinite,
        height: 520,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(
              color: Colors.black.withOpacity(0.2),
              width: 0.5,
            ),
          ),
        ),
        child: Center(
          child: Container(
            height: 300,
            padding: const EdgeInsetsDirectional.all(50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 30,
                children: [
                  InkWell(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () => Navigator.popUntil(context,
                          ModalRoute.withName(Navigator.defaultRouteName)),
                      child: const Name()),
                  const HorizontalSpace(
                    size: 100,
                  ),

                  //
                  SizedBox(
                    width: 400,
                    height: 200,
                    // color: Colors.black,
                    child: Column(
                      children: [
                        Text(
                          'Unlock the power of seamless interactions. Let my expertise in mobile development amplify your user experiences, optimizing engagement and maximizing results.',
                          style: bodyTextStyle,
                        ),
                        const VerticalSpace(
                          size: 45,
                        ),
                        const ConnectMe()
                      ],
                    ),
                  ),

                  const HorizontalSpace(
                    size: 140,
                  ),
                  // Container(
                  //   width: 500,
                  //   height: 200,
                  //   color: Colors.black,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
