import 'package:flutter/material.dart';
import 'package:portfolio/info.dart';
import 'package:portfolio/widgets/custom_buttons.dart';

class ProjectUi extends StatelessWidget {
  final ProjectModel model;

  const ProjectUi(this.model, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              model.name!,
              textScaleFactor: 2,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                model.description!,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinkButton(
                text: "Link",
                url: model.link,
              ),
            ),
            if (model.image != null)
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          model.image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
