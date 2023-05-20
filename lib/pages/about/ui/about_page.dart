import 'package:flutter/material.dart';

import '../../../components/components.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  static const String name = 'about_page';

  @override
  Widget build(BuildContext context) {
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
            const VerticalSpace(
              size: 300,
            ),
            UiScaler(
              alignment: Alignment.topCenter,
              child: Wrap(
                spacing: 50,
                runSpacing: 50,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
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
                          Container(
                            width: 400,
                            height: 100,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),

                  // desc text
                  SizedBox(
                    // height: 500,
                    width: 600,
                    // color: Colors.black,
                    child: Text(
                      '''I am the father of the most beautiful twin daughters in the world. I live in the Netherlands and I love to ride my motorcyle to unwind.

A long time ago I started my career as a psychologist, but quickly realized that designing digital products is my true passion. My master's in psychology turned out to be a tremendous help with understanding human behavior and how to best design for it; simplicity is the key to great user experiences.

I have around 16 years experience designing digital products. I co-founded two companies called Bread&Pepper and Gibbon. The last one got acquired by Degreed, and for several years I have enjoyed leading and growing the product design team of this edtech unicorn.

I love simplicity, have an allergy for bullsh*t and always strive to be a good human. If you think I can help you with any project or coaching, don't hesitate to get in touch.''',
                      style: bodyTextStyle2,
                    ),
                  ),
                ],
              ),
            ),

            // v-space
            const VerticalSpace(
              size: 250,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 135.0),
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
