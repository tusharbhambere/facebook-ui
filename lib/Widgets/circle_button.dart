import 'package:flutter/material.dart';

class CircleButtons extends StatelessWidget {
  final IconData icons;
  final double size;
  final Function onPressed;

  const CircleButtons(
      {Key key,
      @required this.icons,
      @required this.size,
      @required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(6),
        decoration:
            BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(
            icons,
            size: size,
            color: Colors.black,
          ),
          onPressed: onPressed,
        ));
  }
}
