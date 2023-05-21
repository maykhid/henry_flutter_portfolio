import 'package:flutter/material.dart';
import 'package:henry_flutter_portfolio/components/components.dart';
import 'package:henry_flutter_portfolio/pages/about/ui/about_page.dart';
import 'package:henry_flutter_portfolio/pages/contact/ui/contact_page.dart';

class CustomMenuBar extends StatelessWidget {
  const CustomMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UiScaler(
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
              onTap: () => Navigator.popUntil(
                  context, ModalRoute.withName(Navigator.defaultRouteName)),
              // child: Text(
              //   "print(HENRY)",
              //   style: titleTextStyle,
              // ),
              child: const Name(),
            ),
            Flexible(
              child: Container(
                alignment: Alignment.centerRight,
                child: Wrap(
                  spacing: 40,
                  children: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.popUntil(context,
                          ModalRoute.withName(Navigator.defaultRouteName)),
                      // style: menuButtonStyle,
                      child: Text(
                        "Home",
                        style: subtitleTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, AboutPage.name),
                      // style: menuButtonStyle,
                      child: Text(
                        "About",
                        style: subtitleTextStyle,
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, ContactPage.name),
                      // style: menuButtonStyle,
                      child: Text(
                        "Contact",
                        style: subtitleTextStyle,
                      ),
                    ),
                  ],
                ),
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
        text: 'print',
        style: const TextStyle(fontSize: 10, color: Colors.black),
        children: [TextSpan(text: '(HENRY)', style: titleTextStyle)],
      ),
    );
  }
}
