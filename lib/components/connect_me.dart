import 'package:flutter/material.dart';

import 'components.dart';

class ConnectMe extends StatelessWidget {
  const ConnectMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          width: 150,
          onPressed: () {},
          borderRadius: 30,
          child: const Text('Get in touch'),
        ),

        const HorizontalSpace(size: 18),

        //
        HoverIcon(
          iconPath: SvgImages.icTwitter,
          onPressed: () {},
        ),

        const HorizontalSpace(size: 18),

        HoverIcon(
          iconPath: SvgImages.icLinkedIn,
          onPressed: () {},
        ),
      ],
    );
  }
}