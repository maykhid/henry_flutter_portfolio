import 'package:flutter/material.dart';

import 'components.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({
    super.key,
  });

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
                          'Simplicity is the key to great user experiences. Let me help your company design a simpler user experience to achieve better outcomes.',
                          style: bodyTextStyle,
                        ),
                        const VerticalSpace(
                          size: 45,
                        ),
                        Row(
                          children: [
                            CustomButton(
                              width: 150,
                              onPressed: () {},
                              borderRadius: 30,
                              child: const Text('Get in touch'),
                            ),
                          ],
                        )
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
