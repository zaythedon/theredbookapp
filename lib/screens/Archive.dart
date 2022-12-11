import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/PostWidget.dart';

class Archive extends StatefulWidget {

  const Archive({Key? key}) : super(key: key);

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:[
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Danny",
              account:"DO2324",
              description: "fast pae work invirement",
              media: "https://www.betterup.com/hs-fs/hubfs/Blog%20Images/goal%20setting%20theory/goal-setting-theory-person-writes-on-board-presenting-to-team.jpg?width=1446&name=goal-setting-theory-person-writes-on-board-presenting-to-team.jpg",
              rating: "Rating: 5"
          ),
          Divider(),
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "this is a great work place and i am enojying it here",
              media: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              rating: "Rating: 5"
          ),
          Divider(),
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "this is a great work place and i am enojying it here",
              media: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              rating: "Rating: 5"
          ),
          Divider(),
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "this is a great work place and i am enojying it here",
              media: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              rating: "Rating: 5"
          ),
          Divider(),
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "this is a great work place and i am enojying it here",
              media: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              rating: "Rating: 5"
          ),
          Divider(),
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "this is a great work place and i am enojying it here",
              media: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              rating: "Rating: 5"
          ),
        ],
      ),
    );
  }
}
