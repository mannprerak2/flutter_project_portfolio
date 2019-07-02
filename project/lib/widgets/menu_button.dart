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
