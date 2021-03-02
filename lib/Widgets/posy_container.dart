import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/Backend/models/models.dart';
import 'package:facebook_clone/Widgets/profile_avtar.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.white,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _PostHeader(post: post),
              SizedBox(
                height: 4,
              ),
              Text(post.caption),
              post.imageUrl != null
                  ? const SizedBox.shrink()
                  : const SizedBox(
                      height: 6,
                    )
            ],
          ),
        ),
        post.imageUrl != null
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CachedNetworkImage(imageUrl: post.imageUrl))
            : const SizedBox.shrink()
      ]),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  const _PostHeader({Key key, @required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvtar(imageUrl: post.user.imageUrl),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    '${post.timeAgo} •',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {})
      ],
    );
  }
}
