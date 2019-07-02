import 'package:flutter_web/material.dart';
import 'package:portfolio/info.dart';

class ProjectUi extends StatelessWidget {
  final ProjectModel model;

  const ProjectUi(this.model, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(model.name),
          Text(model.description),
          if (model.image != null)
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.network(
                      model.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
