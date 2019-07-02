import 'package:flutter_web/material.dart';

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
