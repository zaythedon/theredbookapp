import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/Profile_CampusWidget.dart';

class TabBar_view_Campus extends StatefulWidget {
  const TabBar_view_Campus({Key? key}) : super(key: key);

  @override
  State<TabBar_view_Campus> createState() => _TabBar_view_CampusState();
}

class _TabBar_view_CampusState extends State<TabBar_view_Campus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
         children: [

           Profile_CampusWidget(profileImage:"https://avatars.githubusercontent.com/u/54953858?v=4",
             userName: "sai",
             userAccount: "AK7781",
             postDescription: "fun place",
             picture: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
           ),
           Divider(
             color: Colors.grey,
           ),
           Profile_CampusWidget(profileImage:"https://avatars.githubusercontent.com/u/54953858?v=4",
             userName: "sai",
             userAccount: "AK7781",
             postDescription: "Amazing view",
             picture: "https://www.travelandleisure.com/thmb/KMg_sLN3yBi3TVECe53PFmSfsqc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grand-teton-rocky-mountains-USMNTNS0720-52499caea565471a8571acdfc3dfd9fe.jpg",
           ),
           Divider(
             color: Colors.grey,
           ),
           Profile_CampusWidget(profileImage:"https://avatars.githubusercontent.com/u/54953858?v=4",
             userName: "sai",
             userAccount: "AK7781",
             postDescription: "Amazing view",
             picture: "https://www.travelandleisure.com/thmb/KMg_sLN3yBi3TVECe53PFmSfsqc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/grand-teton-rocky-mountains-USMNTNS0720-52499caea565471a8571acdfc3dfd9fe.jpg",
           ),
         ],
      ),
    );
  }
}
