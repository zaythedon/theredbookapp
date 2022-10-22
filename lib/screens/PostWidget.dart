import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostWidget extends StatelessWidget {
  final String image;
  final String name;
  final String account;
  final String description;
  final String media;
  final String rating;

  const PostWidget({Key? key, required this.image, required this.name, required this.account, required this.description, required this.media, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            child: Image.network(image, width: 60,),
            ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column
              (
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(account, style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),),
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                        child: Text(name , style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),),),
                  ],
                ),
                Text(description),
                ClipRRect(
                    child: Image.network(media, height: 200,)
                ),
                Text(rating),
              ],
            ),
          ),
        ),
      ],
      );
  }

}
