import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/Profile_CampusWidget.dart';
import 'package:theredbookapp/screens/commentWidget.dart';

class comment extends StatefulWidget {
  const comment({Key? key}) : super(key: key);

  @override
  State<comment> createState() => _commentState();
}

class _commentState extends State<comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: const BackButton(
            color: Colors.black
        ),

        elevation: 1,

      ),
     body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
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
              commentWidget(profileImage:"https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                userName: "Danny",
                userAccount: "D123",
                postDescription: "nice",
                //picture: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              ),
            ],
          ),
          ),

        ],
      ),
     ),
    );
  }
}



