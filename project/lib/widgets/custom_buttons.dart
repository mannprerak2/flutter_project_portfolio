import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;


class MenuButton extends StatelessWidget {
  final text;
  final onPressed;

  const MenuButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}

class SocialButton extends StatelessWidget {
  final text;
  final onPressed;

  const SocialButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      color: Colors.teal,
      splashColor: Colors.teal,
      borderSide: BorderSide(
        color: Colors.teal,
        width: 2,
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}

class LinkButton extends StatelessWidget {
  final text;
  final url;
  const LinkButton({
    Key key,
    @required this.text,
    @required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.teal,
      splashColor: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(text + "  "),
          Icon(Icons.link),
        ],
      ),
      onPressed: () {
        html.window.open(url, url);
      },
    );
  }
}
