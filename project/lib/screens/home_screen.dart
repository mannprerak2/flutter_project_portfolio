import 'package:flutter_web/material.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/contact_info.dart';
import 'package:portfolio/widgets/menu_button.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var menuChildren = <Widget>[
      MenuButton(
        text: "Home",
        onPressed: () {},
      ),
      MenuButton(
        text: "Projects",
        onPressed: () {},
      ),
      MenuButton(
        text: "Contact",
        onPressed: () {},
      ),
    ];
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          actions:
              ResponsiveWidget.isSmallScreen(context) ? null : menuChildren,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                    padding: EdgeInsets.all(8), children: menuChildren),
              )
            : null,
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            AboutMe(),
            ContactInfo(),
            Text(
              "Prerak Mann ©️2019",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal,
              ),
            ),  
          ],
        ),
      ),
    );
  }
}
