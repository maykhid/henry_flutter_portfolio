import 'package:flutter/material.dart';
import 'package:henry_flutter_portfolio/components/components.dart';
import 'package:henry_flutter_portfolio/pages/about/ui/about_page.dart';
import 'package:henry_flutter_portfolio/pages/contact/ui/contact_page.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CustomMenuBar extends StatefulWidget {
  const CustomMenuBar({
    super.key,
  });

  @override
  State<CustomMenuBar> createState() => _CustomMenuBarState();
}

class _CustomMenuBarState extends State<CustomMenuBar> {
  bool isMenuDisplayed = false;

  @override
  Widget build(BuildContext context) {
    final responsiveBreakPoint = ResponsiveBreakpoints.of(context);

    final isMobile = responsiveBreakPoint.isMobile;
    final isLessThanTab = responsiveBreakPoint.smallerThan(TABLET);

    final isBetweenMobileAndTab = responsiveBreakPoint.between(MOBILE, TABLET);

    Widget hamOrMenu() {
      if (isMenuDisplayed) {
        return SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  setState(
                    () => isMenuDisplayed = !isMenuDisplayed,
                  );
                },
                child: const Icon(
                  Icons.close,
                  size: 15,
                ),
              ),
              const MenuItems(),
            ],
          ),
        );
      }
      return IconButton(
        onPressed: () {
          setState(
            () => isMenuDisplayed = !isMenuDisplayed,
          );
        },
        icon: const Icon(Icons.menu),
      );
    }

    return UiScaler(
      alignment: Alignment.topCenter,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isLessThanTab ? 0 : 70,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => Navigator.popUntil(
                    context, ModalRoute.withName(Navigator.defaultRouteName)),
                // child: Text(
                //   "print(HENRY)",
                //   style: titleTextStyle,
                // ),
                child: const Name(),
              ),
              isMobile || isBetweenMobileAndTab ? hamOrMenu() : const MenuItems(),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsiveBreakPoint = ResponsiveBreakpoints.of(context);

    final isLargerThanTab = responsiveBreakPoint.largerThan(TABLET);
    final isLargerThanMobile = responsiveBreakPoint.largerThan(MOBILE);

    double spacing() {
      if (isLargerThanTab) return 50;
      if (isLargerThanMobile) return 20;
      return 10;
    }

    return UiScaler(
      alignment: Alignment.centerRight,
      child: Container(
        alignment: Alignment.centerRight,
        child: Wrap(
          spacing: spacing(),
          children: <Widget>[
            TextButton(
              onPressed: () => Navigator.popUntil(
                  context, ModalRoute.withName(Navigator.defaultRouteName)),
              // style: menuButtonStyle,
              child: Text(
                "Home",
                style: subtitleTextStyle,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, AboutPage.name),
              // style: menuButtonStyle,
              child: Text(
                "About",
                style: subtitleTextStyle,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, ContactPage.name),
              // style: menuButtonStyle,
              child: Text(
                "Contact",
                style: subtitleTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '{ ',
        style: const TextStyle(fontSize: 45, color: Colors.black),
        children: [TextSpan(text: 'HENRY', style: titleTextStyle)],
      ),
    );
  }
}
