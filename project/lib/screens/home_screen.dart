import 'package:flutter_web/material.dart';
import 'package:portfolio/info.dart';
import 'package:portfolio/widgets/about_me.dart';
import 'package:portfolio/widgets/custom_buttons.dart';
import 'package:portfolio/widgets/project_ui.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:portfolio/flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  static final scaffoldKey = GlobalKey<ScaffoldState>();
  static final controller = ScrollController();
  final menuChildren = <Widget>[
    MenuButton(
      text: "About Me",
      onPressed: () {
        if (scaffoldKey.currentState.isDrawerOpen) {
          Navigator.of(scaffoldKey.currentContext).pop();
        }
        controller.animateTo(
          0,
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
        );
      },
    ),
    MenuButton(
      text: "Projects",
      onPressed: () {
        if (scaffoldKey.currentState.isDrawerOpen) {
          Navigator.of(scaffoldKey.currentContext).pop();
        }
        //TODO: change this whenever layout is updated in height
        controller.animateTo(
          ResponsiveWidget.isLargeScreen(scaffoldKey.currentContext)
              ? 350
              : ResponsiveWidget.isMediumScreen(scaffoldKey.currentContext)
                  ? 310
                  : 630,
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    int count = ResponsiveWidget.isLargeScreen(context)
        ? 3
        : ResponsiveWidget.isSmallScreen(context) ? 1 : 2;
    return Scaffold(
      key: scaffoldKey,
      drawer: ResponsiveWidget.isSmallScreen(context)
          ? Drawer(
              child:
                  ListView(padding: EdgeInsets.all(8), children: menuChildren),
            )
          : null,
      body: CustomScrollView(
        controller: controller,
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
