import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_RedbookWidget extends StatelessWidget {

  final String profileImage;
  final String userName;
  final String postReview;


  const Profile_RedbookWidget({Key? key, required this.profileImage, required this.userName, required this.postReview }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  //  int count = 0;
    return
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              child: Image.network(profileImage, width: 60,),
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
                      Text(userName, style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),),
                    ],
                  ),
                  Text(postReview,style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                            right: 90),
                        child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.black,), label: Text("5", style: TextStyle(color: Colors.black),),),
                        // child: IconButton(onPressed: (){
                        //   //  setState({ count++ },);
                        // }, icon: Icon(Icons.favorite_border), ),

                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                            right: 90),
                        child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.envelopeSquare)),

                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],

                  ),
        ],
    ),
    ),
    ),
    ],
      );

  }
}

