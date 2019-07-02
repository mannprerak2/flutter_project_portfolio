import 'package:flutter_web/material.dart';
import 'package:portfolio/info.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/custom_buttons.dart';
import 'package:portfolio/widgets/project_ui.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class HomePage extends StatelessWidget {
  final menuChildren = <Widget>[
    MenuButton(
      text: "About Me",
      onPressed: () {},
    ),
    MenuButton(
      text: "Projects",
      onPressed: () {},
    ),
  ];

  final projectChildren = <Widget>[
    for (var p in projectsModels) ProjectUi(p),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: ResponsiveWidget.isSmallScreen(context) ? null : menuChildren,
      ),
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child:
                  ListView(padding: EdgeInsets.all(8), children: menuChildren),
            )
          : null,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(child: AboutMe()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "My Projects",
                textScaleFactor: 2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: ResponsiveWidget.isLargeScreen(context)
                ? 3
                : ResponsiveWidget.isSmallScreen(context) ? 1 : 2,
            children: projectChildren,
          ),
          // ResponsiveWidget(
          //   largeScreen: GridView.count(
          //     crossAxisCount: 3,
          //     children: projectChildren,
          //   ),
          //   mediumScreen: GridView.count(
          //     crossAxisCount: 2,
          //     children: projectChildren,
          //   ),
          //   smallScreen: GridView.count(
          //     crossAxisCount: 1,
          //     children: projectChildren,
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Text(
              "Prerak Mann ©️2019 - made with Flutter for Web",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal[300],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
