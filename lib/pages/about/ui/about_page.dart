import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../components/components.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const String name = 'about_page';

  @override
  Widget build(BuildContext context) {
    final responsiveBreakPoint = ResponsiveBreakpoints.of(context);

    final isLargerThanTab = responsiveBreakPoint.largerThan(TABLET);
    final isLargerThanMobile = responsiveBreakPoint.largerThan(MOBILE);

    double vSpacing() {
      if (isLargerThanTab) return 200;
      if (isLargerThanMobile) return 130;
      return 0;
    }

    double horizPadding() {
      if (isLargerThanMobile) return 100;
      if (isLargerThanTab) return 150;
      return 50;
    }

    return Scaffold(
      backgroundColor: backgroundPrimary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(
              size: 50,
            ),
            const CustomMenuBar(),

            VerticalSpace(
              size: isLargerThanMobile ? 300 : 100,
            ),

            UiScaler(
              alignment: Alignment.topCenter,
              child: Wrap(
                spacing: 50,
                runSpacing: 50,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: isLargerThanMobile ? 30 : 0),
                    child: SizedBox(
                      width: 560,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Henry Ifebunandu—\nMechanical Engineer turned Developer',
                            style: headlineTextStyle,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const ConnectMe()
                        ],
                      ),
                    ),
                  ),

                  // desc text
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: isLargerThanMobile ? 30 : 0),
                    child: SizedBox(
                      // height: 500,
                      width: 600,
                      // color: Colors.black,
                      child: Text(
                        '''Oh, Hi there! A little bird told me you'd like to know more about me, well come a lil bit closer 🌚. I live in Nigeria, in the city that dosen't sleep, Lagos! So best believe, i'm built different💪🏽... trust me.
               
A long time ago I started my career as a mechanical engineer, but quickly realized that developing software is my true passion. My degree in mechanical engineering turned out to be a tremendous help equipping me with strong problem-solving abilities, analytical thinking, and attention to detail.

I have around 4 years experience developing mobile apps. I co-founded two companies called Bread&Pepper and Gibbon. The last one got acquired by Degreed, and for several years I have enjoyed leading and growing the product design team of this edtech unicorn.

I love the simple things of life. I am a cinephile, music and anime lover, on my free days, if you don't spot me with a friend I am most likely indulging in one of those. 

If you think I can help you with any project or coaching, don't hesitate to get in touch.''',
                        style: bodyTextStyle2,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // v-space
            VerticalSpace(size: vSpacing()),

            Padding(
              padding: EdgeInsets.only(left: horizPadding()),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Some photos...',
                    style: headlineSecondaryTextStyle,
                  )),
            ),

            const VerticalSpace(
              size: 650,
            ),

            const PageFooter(),
          ],
        ),
      ),
    );
  }
}
