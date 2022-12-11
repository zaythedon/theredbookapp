import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/FollowingWidget.dart';

class FollowingTabBar_view extends StatefulWidget {
  const FollowingTabBar_view({Key? key}) : super(key: key);

  @override
  State<FollowingTabBar_view> createState() => _FollowingTabBar_viewState();
}

class _FollowingTabBar_viewState extends State<FollowingTabBar_view> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FollowingWidget(profileImage: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
              userName: "Cynthia",
              bio: "Hello! This is Cynthia"),
          FollowingWidget(profileImage: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
              userName: "Sam",
              bio: "Hello! This is Sam")
        ],
      ) ,
    );
  }
}
