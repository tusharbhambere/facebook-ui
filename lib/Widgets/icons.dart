import 'package:flutter/material.dart';

class IconsButtons3 extends StatelessWidget {
  final String name;
  final IconData icons;
  final Function onPressed;
  final Color color;

  const IconsButtons3(
      {Key key,
      @required this.name,
      @required this.icons,
      @required this.onPressed,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(
              icons,
              color: color,
            ),
            Text(
              name,
              style: const TextStyle(color: Colors.red),
            )
          ],
        ),
      );
}
