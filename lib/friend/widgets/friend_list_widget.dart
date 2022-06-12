import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class FriendListWidget extends StatelessWidget {
  final List<User> friends;
  const FriendListWidget({Key? key, required this.friends}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length,
      itemBuilder: (context, index) {
        var user = friends[index];
        return ListTile(
          leading: CircleAvatar(
              radius: 24,
              backgroundImage:
                  CachedNetworkImageProvider(user.avatar.thumbnail)),
          title: Text(user.fullName),
          subtitle: Text(user.email),
          dense: true,
        );
      },
    );
  }
}
