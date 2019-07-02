import 'package:flutter_web/material.dart';
import 'package:portfolio/info.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class AboutMe extends StatelessWidget {
  profileImage(context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.35
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.35
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(profileImageUrl),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          profileImage(context),
          Expanded(child: SmallInfo()),
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          profileImage(context),
          SmallInfo(),
        ],
      ),
    );
  }
}

class SmallInfo extends StatelessWidget {
  const SmallInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi, I am",
            textScaleFactor: 2,
            style: TextStyle(color: Colors.teal),
          ),
          Text(
            "Prerak Mann",
            textScaleFactor: 5,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              "I am a Mobile App Developer with experience in\n"
              "Android and Flutter.\n"
              "I love to explore new technologies and "
              "make useful side projects in my spare time\n",
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.white70),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
