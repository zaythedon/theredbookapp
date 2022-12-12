import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/Archive.dart';
import 'package:theredbookapp/screens/PostWidget.dart';

class campus_draw extends StatefulWidget {

  const campus_draw({Key? key}) : super(key: key);

  @override
  State<campus_draw> createState() => _campus_drawState();
}

class _campus_drawState extends State<campus_draw> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:[
          PostWidget(
              image:"https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",
              name: "Cynthia",
              account:"Csengabo",
              description: "Good morning",
              media: "https://i.pinimg.com/736x/13/42/03/13420325b0615abd17d13f4504281807.jpg",
              rating: " "
          ),
          Divider(),
          PostWidget(
              image:"https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",
              name: "Hassib",
              account:"HT",
              description: "Work, work, work",
              media: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGVpLiLUWLAIe0DhgXbY93ebkNV01AAZxQPQ&usqp=CAU",
              rating: " "
          ),
          Divider(),
          PostWidget(
              image:"https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png",
              name: "Danny",
              account:"Danny10",
              description: "this is a great work place and i am enojying it here",
              media: "https://assets.aboutamazon.com/dims4/default/32861da/2147483647/strip/true/crop/1600x901+0+83/resize/1320x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2Fc3%2F15%2F202c3f54402da5128d962a969b02%2Famazon-nashville-3.jpg",
              rating: " "
          ),

        ],
      ),
    );
  }
}


