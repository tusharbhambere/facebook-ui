import 'package:facebook_clone/Backend/models/models.dart';
import 'package:facebook_clone/Widgets/icons.dart';

import 'package:flutter/material.dart';

import 'widgets.dart';

class CreatPostContainer extends StatelessWidget {
  final User currentUser;

  const CreatPostContainer({Key key, @required this.currentUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvtar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "Whats in your mind?"),
                ),
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconsButtons3(
                  name: 'Live',
                  icons: Icons.videocam,
                  onPressed: () {},
                  color: Colors.red,
                ),
                const VerticalDivider(
                  width: 8,
                ),
                IconsButtons3(
                  name: 'Photo',
                  icons: Icons.photo_library,
                  onPressed: () {},
                  color: Colors.green,
                ),
                const VerticalDivider(
                  width: 8,
                ),
                IconsButtons3(
                  name: 'Room',
                  icons: Icons.video_call,
                  onPressed: () {},
                  color: Colors.purpleAccent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
