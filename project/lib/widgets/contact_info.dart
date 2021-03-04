import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_buttons.dart';
import 'package:url_launcher/url_launcher.dart' as html;

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contactButtons = <Widget>[
      SocialButton(
        text: "Github",
        onPressed: () {
          html.launch("https://github.com/mannprerak2/");
        },
      ),
      SocialButton(
        text: "Linked-In",
        onPressed: () {
          html.launch("https://www.linkedin.com/in/prerak-mann-4b0011165/");
        },
      ),
      SocialButton(
        text: "Facebook",
        onPressed: () {
          html.launch("https://www.facebook.com/prerak.mann");
        },
      ),
    ];
    return Wrap(
      runAlignment: WrapAlignment.spaceEvenly,
      children: contactButtons,
    );
  }
}
