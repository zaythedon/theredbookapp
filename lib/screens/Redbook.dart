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


