import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/Archive.dart';
import 'package:theredbookapp/screens/PostWidget.dart';

class Archive_draw extends StatefulWidget {

  const Archive_draw({Key? key}) : super(key: key);

  @override
  State<Archive_draw> createState() => _Archive_drawState();
}

class _Archive_drawState extends State<Archive_draw> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:[
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "checkout UAlbany",
              media: "https://www.albany.edu/sites/default/files/styles/hero_slide_image/public/campus.jpg?itok=KlSVXYRx",
              rating: "5"
          ),
          Divider(),
          PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "this is a great work place and i am enojying it here",
              media: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              rating: "5"
          ),

        ],
      ),
    );
  }
}


