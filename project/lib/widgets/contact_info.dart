import 'package:flutter_web/material.dart';
import 'package:portfolio/widgets/menu_button.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class ContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var contactButtons = <Widget>[
      MenuButton(
        text: "Github",
        onPressed: () {},
      ),
      MenuButton(
        text: "Twitter",
        onPressed: () {},
      ),
      MenuButton(
        text: "Facebook",
        onPressed: () {},
      ),
    ];
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: contactButtons,
      ),
      smallScreen: Column(children: contactButtons),
    );
  }
}
