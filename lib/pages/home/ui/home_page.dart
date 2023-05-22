import 'package:flutter/material.dart';
import 'package:henry_flutter_portfolio/components/components.dart';

import 'package:responsive_framework/responsive_breakpoints.dart';

class HomePage extends StatelessWidget {
  static const String name = 'home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveBreakPoint = ResponsiveBreakpoints.of(context);
    final isdesk = responsiveBreakPoint.isDesktop;
    final isTab = responsiveBreakPoint.isTablet;
    final isMobile = responsiveBreakPoint.isMobile;

    final isLessThanTab = responsiveBreakPoint.smallerThan(TABLET);
    print(isLessThanTab);

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

            const CustomMenuBar(),

            VerticalSpace(
              size: isLessThanTab ? 150 : 300,
            ),

            // Desc
            UiScaler(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: isLessThanTab ? 0 : 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Henry Ifebunandu—Mobile App Developer',
                      style: subtitleTextStyle,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'I transform ideas into polished mobile apps that provide seamless user experiences.',
                      style: headlineTextStyle,
                    ),
                  ],
                ),
              ),
            ),

            VerticalSpace(
              size: isLessThanTab ? 120 : 350,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: isLessThanTab ? 10 : 100),
                child: Wrap(
                  spacing: 50,
                  runSpacing: isLessThanTab ? 20 : 40,
                  runAlignment: WrapAlignment.start,
                  children: const [
                    MyAbility(),
                    MyAbility(),
                    MyAbility(),
                  ],
                ),
              ),
            ),

            VerticalSpace(
              size: isLessThanTab ? 100 : 280,
            ),

            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: isLessThanTab ? 0 : 100.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 40,
                runSpacing: isLessThanTab ? 0 : 30,
                runAlignment: WrapAlignment.center,
                children: const [
                  ProductImage(),

                  //
                  ProductDescription(),
                ],
              ),
            ),

            VerticalSpace(
              size: isLessThanTab ? 100 : 150,
            ),

            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: isLessThanTab ? 0 : 100.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 40,
                runSpacing: isLessThanTab ? 0 : 30,
                direction: Axis.horizontal,
                children: const [
                  ProductDescription(),

                  //
                  // HorizontalSpace(
                  //   size: 40,
                  // ),

                  //
                  ProductImage(),
                ],
              ),
            ),

            const VerticalSpace(
              size: 400,
            ),

            Container(
              width: 1300,
              height: 600,
              color: Colors.black,
            ),

            const VerticalSpace(
              size: 400,
            ),

            const PageFooter(),
          ],
        ),
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UiScaler(
      alignment: Alignment.center,
      child: SizedBox(
        width: 300,
        height: 200,
        // color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.build_circle,
                  size: 40,
                ),
                const HorizontalSpace(),
                Text(
                  'Product Description',
                  style: subHeadline,
                ),
              ],
            ),
            const VerticalSpace(
              size: 12,
            ),
            Text(
              'Simplifying and redesigning a learner experience platform.',
              style: headlineSecondaryTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveBreakPoint = ResponsiveBreakpoints.of(context);
    final isLessThanTab = responsiveBreakPoint.smallerThan(TABLET);
    final isLessThanDesktop = responsiveBreakPoint.smallerThan(DESKTOP);

    return UiScaler(
      alignment: Alignment.center,
      child: Container(
        width: isLessThanDesktop ? 700 : 900,
        height: isLessThanDesktop ? 250 : 600,
        color: Colors.black,
      ),
    );
  }
}

class MyAbility extends StatelessWidget {
  const MyAbility({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveBreakPoint = ResponsiveBreakpoints.of(context);
    final isLessThanTab = responsiveBreakPoint.smallerThan(TABLET);

    return Padding(
      padding: EdgeInsets.only(left: isLessThanTab ? 30.0 : 0),
      child: SizedBox(
        width: 330,
        // height: 200,
        // color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.build_circle,
              size: 40,
            ),
            const VerticalSpace(
              size: 18,
            ),
            Text(
              'Simplify & redesign products',
              style: subHeadline,
            ),
            const VerticalSpace(
              size: 12,
            ),
            Text(
              'Often products becomes more complex than needed due to the fast pace of startups. Simplifying and redesigning the user experience can make the product more effective.',
              style: bodyTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
