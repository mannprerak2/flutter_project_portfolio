import 'package:flutter_web/material.dart';
import 'package:portfolio/info.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/custom_buttons.dart';
import 'package:portfolio/widgets/project_ui.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'dart:html' as html;

class HomePage extends StatefulWidget {
  static final scaffoldKey = GlobalKey<ScaffoldState>();
  static final controller = ScrollController();

  @override
  _HomePageState createState() => _HomePageState();

  static void scrollTo(double offset, {bool absolute = false}) {
    double pos = offset;

    if (!absolute) {
      pos += HomePage.controller.offset;
    }

    HomePage.controller.animateTo(
      pos,
      duration: Duration(milliseconds: absolute ? 1000 : 200),
      curve: Curves.decelerate,
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    html.window.onKeyDown.listen((e) {
      if (e.keyCode == html.KeyCode.DOWN || e.keyCode == html.KeyCode.SPACE) {
        HomePage.scrollTo(150);
      } else if (e.keyCode == html.KeyCode.UP) {
        HomePage.scrollTo(-150);
      }
    });
    super.initState();
  }

  final menuChildren = <Widget>[
    MenuButton(
      text: "About Me",
      onPressed: () {
        if (HomePage.scaffoldKey.currentState.isDrawerOpen) {
          Navigator.of(HomePage.scaffoldKey.currentContext).pop();
        }
        HomePage.scrollTo(0, absolute: true);
      },
    ),
    MenuButton(
      text: "Projects",
      onPressed: () {
        if (HomePage.scaffoldKey.currentState.isDrawerOpen) {
          Navigator.of(HomePage.scaffoldKey.currentContext).pop();
        }
        //TODO: change this whenever layout is updated in height
        HomePage.scrollTo(
            ResponsiveWidget.isLargeScreen(HomePage.scaffoldKey.currentContext)
                ? 350
                : ResponsiveWidget.isMediumScreen(
                        HomePage.scaffoldKey.currentContext)
                    ? 310
                    : 630,
            absolute: true);
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int count = ResponsiveWidget.isLargeScreen(context)
        ? 3
        : ResponsiveWidget.isSmallScreen(context) ? 1 : 2;
    return Scaffold(
      key: HomePage.scaffoldKey,
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child:
                  ListView(padding: EdgeInsets.all(8), children: menuChildren),
            )
          : null,
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        controller: HomePage.controller,
        slivers: <Widget>[
          SliverAppBar(
            elevation: 10,
            title: Text("Prerak Mann"),
            floating: true,
            snap: true,
            pinned: ResponsiveWidget.isSmallScreen(context) ? false : true,
            centerTitle: true,
            actions:
                ResponsiveWidget.isSmallScreen(context) ? null : menuChildren,
          ),
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
          SliverStaggeredGrid.countBuilder(
            crossAxisCount: count,
            itemCount: projectsModels.length,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemBuilder: (context, i) => ProjectUi(projectsModels[i]),
            staggeredTileBuilder: (i) => StaggeredTile.fit(1),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Prerak Mann ©️2019 - made with Flutter Web",
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
