import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/FollowWidget.dart';

class FollowerTabBar_view extends StatefulWidget {
  const FollowerTabBar_view({Key? key}) : super(key: key);

  @override
  State<FollowerTabBar_view> createState() => _FollowerTabBar_viewState();
}

class _FollowerTabBar_viewState extends State<FollowerTabBar_view> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FollowWidget(profileImage: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
              userName: "Danny",
              bio: "Hello! This is Danny"),
          FollowWidget(profileImage: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
              userName: "Hassib",
              bio: "Hello! This is Hassib"),

        ],
      ) ,
    );
  }
}

