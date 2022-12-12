import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/PostWidget.dart';

class Redbook extends StatefulWidget {

  const Redbook({Key? key}) : super(key: key);

  @override
  State<Redbook> createState() => _RedbookState();
}

class _RedbookState extends State<Redbook> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children:[
            PostWidget(
              image:"https://avatars.githubusercontent.com/u/54953858?v=4",
              name: "Anudeep",
              account:"AK7761",
              description: "this is a great work place and i am enojying it here",
              media: "https://static.dezeen.com/uploads/2016/03/google-tel-aviv-office-interior-_dezeen_ban.jpg",
              rating: "5"
          ),
            Divider(),
            PostWidget(
                image:"https://avatars.githubusercontent.com/u/54953858?v=4",
                name: "Anudeep",
                account:"AK7761",
                description: "this is a great work place and i am enojying it here",
                media: "https://assets.aboutamazon.com/dims4/default/32861da/2147483647/strip/true/crop/1600x901+0+83/resize/1320x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2Fc3%2F15%2F202c3f54402da5128d962a969b02%2Famazon-nashville-3.jpg",
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
            Divider(),
            PostWidget(
                image:"https://avatars.githubusercontent.com/u/54953858?v=4",
                name: "Anudeep",
                account:"AK7761",
                description: "this is a great work place and i am enojying it here",
                media: "https://assets.aboutamazon.com/dims4/default/32861da/2147483647/strip/true/crop/1600x901+0+83/resize/1320x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2Fc3%2F15%2F202c3f54402da5128d962a969b02%2Famazon-nashville-3.jpg",
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


