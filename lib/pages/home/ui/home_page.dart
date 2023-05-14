import 'package:flutter/material.dart';
import 'package:henry_flutter_portfolio/components/components.dart';
import 'package:henry_flutter_portfolio/components/ui_scaler.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class HomePage extends StatelessWidget {
  static const String name = 'home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isdesk = ResponsiveBreakpoints.of(context).isDesktop;
    final isTab = ResponsiveBreakpoints.of(context).isTablet;
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Scaffold(
      backgroundColor: backgroundPrimary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const VerticalSpace(
              size: 50,
            ),

            UiScaler(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () => Navigator.popUntil(context,
                          ModalRoute.withName(Navigator.defaultRouteName)),
                      child: Text(
                        "HENRY",
                        style: titleTextStyle,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Wrap(
                          children: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.popUntil(
                                  context,
                                  ModalRoute.withName(
                                      Navigator.defaultRouteName)),
                              // style: menuButtonStyle,
                              child: Text(
                                "Home",
                                style: subtitleTextStyle,
                              ),
                            ),

                            const HorizontalSpace(
                              size: 40,
                            ),

                            TextButton(
                              onPressed: () {},
                              // style: menuButtonStyle,
                              child: Text(
                                "About",
                                style: subtitleTextStyle,
                              ),
                            ),

                            const HorizontalSpace(
                              size: 40,
                            ),

                            TextButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, 'TypographyPage'),
                              // style: menuButtonStyle,
                              child: Text(
                                "Contact",
                                style: subtitleTextStyle,
                              ),
                            ),

                            // const HorizontalSpace(
                            //   size: 100,
                            // ),
                            // TextButton(
                            //   onPressed: () {},
                            //   // style: menuButtonStyle,
                            //   child: const Text(
                            //     "ABOUT",
                            //   ),
                            // ),
                            // TextButton(
                            //   onPressed: () {},
                            //   // style: menuButtonStyle,
                            //   child: const Text(
                            //     "CONTACT",
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),

                    // const HorizontalSpace(
                    //   size: 100,
                    // ),
                  ],
                ),
              ),
            ),

            const VerticalSpace(
              size: 300,
            ),

            // Desc
            UiScaler(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Henry Ifebunandu—Mobile Developer',
                      style: subtitleTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'With a focus on startups, I transform ideas into polished mobile apps that provide seamless user experiences.',
                      style: headlineTextStyle,
                    ),
                  ],
                ),
              ),
            ),

            const VerticalSpace(
              size: 500,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Wrap(
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.black,
                  ),

                  const HorizontalSpace(
                    size: 40,
                  ),

                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.black,
                  ),
                  
                  const HorizontalSpace(
                    size: 40,
                  ),
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

            const VerticalSpace(
              size: 500,
            ),
          ],
        ),
      ),
    );
  }
}
