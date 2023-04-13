import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_navigation/data/model/FriendInfo.dart';

class FriendList extends StatelessWidget {
  FriendList({Key? key}) : super(key: key);

  final friendNames = [
    "Eileen Stephens",
    "Jim Kaufman",
    "Zain Sims",
    "Katherine Bruce",
    "Terence Fuentes",
    "Silas Dillon",
    "Cayden Conway",
    "Lyla Mckee",
  ];

  final friendDPImgUrls = [
    "asset/images/avatar/ic_avatar_1.jpg",
    "asset/images/avatar/ic_avatar_2.jpg",
    "asset/images/avatar/ic_avatar_3.jpg",
    "asset/images/avatar/ic_avatar_4.jpg",
    "asset/images/avatar/ic_avatar_5.jpg",
    "asset/images/avatar/ic_avatar_6.jpg",
    "asset/images/avatar/ic_avatar_7.jpg",
    "asset/images/avatar/ic_avatar_8.jpg",
  ];

  final numberOfFriends = 20;

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < numberOfFriends; i++) {
      Random random = new Random();
      int chosenIndex = random.nextInt(7);
      friendList.add(FriendInfo(
          name: friendNames[chosenIndex],
          dpImgUrl: friendDPImgUrls[chosenIndex]));
    }

    return ListView.builder(
      itemCount: friendList.length,
      itemBuilder: (context, index) {
        return Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
          leading: Image.asset(friendList[index].dpImgUrl),
          title: Text(friendList[index].name),
        ),
            ));
      },
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    );
  }

  List<FriendInfo> friendList = [];
}
