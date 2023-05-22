import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../components/components.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static const String name = 'contact_page';

  @override
  Widget build(BuildContext context) {
    final responsiveBreakPoint = ResponsiveBreakpoints.of(context);

    final isLargerThanTab = responsiveBreakPoint.largerThan(TABLET);
    final isLargerThanMobile = responsiveBreakPoint.largerThan(MOBILE);

    return Scaffold(
      backgroundColor: backgroundPrimary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding: EdgeInsets.symmetric(
                        horizontal: isLargerThanMobile ? 100 : 0),
                    child: SizedBox(
                      width: 720,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Let\'s Chat!',
                            style: headlineTextStyle,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            // width: 1800,
                            // height: 200,
                            // color: Colors.black,
                            child: Text(
                              '''Looking forward to meet you and learn more about your business and the design challenges it's facing. Feel free to get in touch for inquiries or a virtual coffee.''',
                              style: bodyTextStyle2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  // desc text
                ],
              ),
            ),

            // v-space
            const VerticalSpace(
              size: 150,
            ),

            UiScaler(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 80),
                child: SizedBox(
                  height: isLargerThanTab ? 200 : 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // first row
                      Wrap(
                        // runSpacing: 40,
                        children: const [
                          ContactInfo(
                            prompt: 'Send me an email',
                            info: 'henryifebunandu@gmail.com',
                          ),
                          HorizontalSpace(
                            size: 130,
                          ),
                          ContactInfo(
                            prompt: 'Chat on WhatsApp ',
                            info: '+234 (0)8189957568',
                          ),
                        ],
                      ),

                      // SizedBox(height: 40,),

                      // second row
                      Wrap(
                        // runSpacing: 30,
                        alignment: WrapAlignment.start,
                        runAlignment: WrapAlignment.start,
                        children: const [
                          ContactInfo(
                            prompt: 'Follow me on Twitter',
                            info: 'twitter.com/_maykhid',
                          ),
                          HorizontalSpace(
                            size: 130,
                          ),
                          ContactInfo(
                            prompt: 'Connect on LinkedIn',
                            info: 'linkedin.com/in/henry-ifebunandu/',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const VerticalSpace(
              size: 300,
            ),

            const PageFooter(),
          ],
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
    required this.prompt,
    required this.info,
  });

  final String prompt;
  final String info;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            prompt,
            style: subtitleTextStyle,
          ),
          const VerticalSpace(
            size: 20,
          ),
          Text(
            info,
            style: bodyTextStyle2Bold,
          )
        ],
      ),
    );
  }
}
