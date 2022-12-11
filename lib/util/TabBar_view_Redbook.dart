import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/Profile_RedbookWidget.dart';

class TabBar_view_Redbook extends StatefulWidget {
  const TabBar_view_Redbook({Key? key}) : super(key: key);

  @override
  State<TabBar_view_Redbook> createState() => _TabBar_view_RedbookState();
}

class _TabBar_view_RedbookState extends State<TabBar_view_Redbook> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(

        children: [
          Profile_RedbookWidget(profileImage:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
              userName: "Cynthia",
              postReview: "awesome",
          ),
          Divider(
            color: Colors.grey,
          ),
          Profile_RedbookWidget(profileImage:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
            userName: "Cynthia",
            postReview: "awesome",
          ),
          Divider(
            color: Colors.grey,
          ),
          Profile_RedbookWidget(profileImage:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
            userName: "Cynthia",
            postReview: "awesome",
          ),


       ],

   ),
    );
  }
}