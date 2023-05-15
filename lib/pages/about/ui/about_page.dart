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
          children: const [
            VerticalSpace(
              size: 50,
            ),
            CustomMenuBar(),
            VerticalSpace(
              size: 300,
            ),
          ],
        ),
      ),
    );
  }
}
