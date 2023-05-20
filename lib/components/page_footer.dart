import 'package:flutter/material.dart';

import 'components.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName)),
                child: Text(
                  "{  HENRY  }",
                  style: titleTextStyle,
                ),
              ),
              const HorizontalSpace(
                size: 100,
              ),
              Container(
                width: 400,
                height: 200,
                color: Colors.black,
              ),
              const HorizontalSpace(
                size: 140,
              ),
              Container(
                width: 500,
                height: 200,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
