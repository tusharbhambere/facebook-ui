import 'package:facebook_clone/Backend/data.dart';
import 'package:facebook_clone/Backend/models/models.dart';
import 'package:facebook_clone/Widgets/posy_container.dart';
import 'package:facebook_clone/Widgets/widgets.dart';
import 'package:facebook_clone/constant.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'Facebook',
              style: const TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButtons(
                icons: Icons.search,
                size: 22,
                onPressed: () {},
              ),
              CircleButtons(
                icons: MdiIcons.facebookMessenger,
                size: 22,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatPostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final Post post = posts[index];
                return PostContainer(post: post);
              },
              childCount: posts.length,
            ),
          )
        ],
      ),
    );
  }
}
