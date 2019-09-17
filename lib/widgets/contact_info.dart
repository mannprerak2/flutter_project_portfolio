import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_buttons.dart';
import 'package:universal_html/html.dart' as html;


class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contactButtons = <Widget>[
      SocialButton(
        text: "Github",
        onPressed: () {
          html.window.open("https://github.com/mannprerak2/", "Prerak Mann Github");
        },
      ),
      SocialButton(
        text: "Linked-In",
        onPressed: () {
          html.window.open("https://www.linkedin.com/in/prerak-mann-4b0011165/",
              "Prerak Mann Linked In");
        },
      ),
      SocialButton(
        text: "Facebook",
        onPressed: () {
          html.window
              .open("https://www.facebook.com/prerak.mann", "Prerak Mann Facebook");
        },
      ),
    ];
    return Wrap(
      runAlignment: WrapAlignment.spaceEvenly,
      children: contactButtons,
    );
  }
}
