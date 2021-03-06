import 'package:flutter/material.dart';
import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/models/models.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;

  const FriendPostListView({Key? key, required this.friendPosts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Social Chefs 👩‍🍳', style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 16.0),
          ListView.separated(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, index) => FriendPostTile(post: friendPosts[index]),
            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
            itemCount: friendPosts.length,
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
