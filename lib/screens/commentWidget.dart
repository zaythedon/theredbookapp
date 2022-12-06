import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theredbookapp/screens/comment.dart';


class commentWidget extends StatelessWidget {
  final String profileImage;
  final String userName;
  final String userAccount;
  final String postDescription;
  //final String picture;

  const commentWidget({Key? key, required this.profileImage, required this.userName, required this.userAccount, required this.postDescription, }) : super(key: key);

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
                      Padding(
                        padding: const EdgeInsets.only(left:10),
                        child: Text(userAccount , style: GoogleFonts.roboto(textStyle: TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),),),
                    ],
                  ),
                  Text(postDescription,style: TextStyle(fontSize: 20),),
                  // ClipRRect(
                  //     child: Image.network(picture, height: 200,)
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                            right: 55),

                        child:   TextButton.icon(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => comment()));}, icon: FaIcon(FontAwesomeIcons.comment, size: 20,color: Colors.black, ), label: Text ("5", style: TextStyle(color: Colors.black),),  ),
                        //child:   IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.comment, size: 20) ),

                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                            right: 30),
                        child:    TextButton.icon(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.retweet, size: 20, color: Colors.black,), label: Text("5", style: TextStyle(color: Colors.black),),),
                        //child:    IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.retweet, size: 20)),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(
                            right: 30 ),

                        child:     TextButton.icon(onPressed: (){}, icon: Icon(Icons.favorite_border, size: 25, color: Colors.black,), label: Text("5", style: TextStyle(color: Colors.black),),),
                        // child:     IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, size: 25,)),
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
