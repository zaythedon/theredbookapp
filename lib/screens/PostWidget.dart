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
          padding: const EdgeInsets.all(6.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            child: Image.network(image, width: 40,),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(account, style: GoogleFonts.bebasNeue(textStyle: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 22)),),
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                        child: Text(name , style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 10)),),),
                  ],
                ),

                SizedBox(height: 10,),

                Text(description, style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 20))),

                SizedBox(height: 10,),

                ClipRRect(
                    child: Image.network(media, height: 200,)
                ),

                SizedBox(height: 10,),

                Text("Rating: "+rating, style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500, fontSize: 15))),
              ],
            ),
          ),
        ),
      ],
      );
  }

}
