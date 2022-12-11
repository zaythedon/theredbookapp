import 'package:flutter/material.dart';
import 'package:theredbookapp/util/FollowerTabBar_view.dart';
import 'package:theredbookapp/util/FollowingTabBar_view.dart';

class userFollower extends StatefulWidget {
  const userFollower({Key? key}) : super(key: key);

  @override
  State<userFollower> createState() => _userFollowerState();
}

class _userFollowerState extends State<userFollower> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: const BackButton(
          color: Colors.black
      ),
      elevation: 1,
    ),
        body: SingleChildScrollView(
          child: Column(
           children: [
             Container(

            child:TabBar(
            indicatorColor: Colors.redAccent,
            tabs: [ Tab(child: Text(
              'Follower',
              style:
              TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),),

            ),
              Tab(child: Text('Following', style:
              TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),)),

            ],
          ),
        ),
           Container(
             width: double.maxFinite,
             height: double.maxFinite,
             child: TabBarView(children: [
             FollowerTabBar_view(),
             FollowingTabBar_view(),
           ],
           ),
           ),
        ],
        ),

      ),
    )
    );

  }
}
