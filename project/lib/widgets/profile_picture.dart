import 'package:flutter_web/material.dart';
import 'package:portfolio/info.dart';

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        maxRadius: 200,
        minRadius: 100,
        backgroundImage: NetworkImage(profileImageUrl),
      ),
    );
  }
}
