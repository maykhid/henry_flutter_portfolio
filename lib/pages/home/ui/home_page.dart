import 'package:flutter/material.dart';
import 'package:henry_flutter_portfolio/components/components.dart';

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

            const CustomMenuBar(),

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

            const VerticalSpace(
              size: 500,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Wrap(
                spacing: 40,
                children: const [
                  MyAbility(),
                  MyAbility(),
                  MyAbility(),
                ],
              ),
            ),

            const VerticalSpace(
              size: 200,
            ),

            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 40,
              runSpacing: 50,
              children: const [
                ProductImage(),

                //
                ProductDescription(),
              ],
            ),

            const VerticalSpace(
              size: 300,
            ),

            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 40,
              runSpacing: 50,
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
    return SizedBox(
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
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UiScaler(
      alignment: Alignment.center,
      child: Container(
        width: 900,
        height: 600,
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
    return SizedBox(
      width: 400,
      height: 200,
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
    );
  }
}
