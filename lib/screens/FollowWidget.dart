import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FollowWidget extends StatelessWidget {

  final String profileImage;
  final String userName;
  final String bio;
  const FollowWidget({Key? key, required this.profileImage, required this.userName, required this.bio}) : super(key: key);

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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                   SizedBox(
                    width: 150,
                    child: Stack(
                    children: [
                      Text(userName, style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),),
                     Padding(
                        padding: const EdgeInsets.only(left:10),
                        ),
                    ],
                    ),
                  ),

                  SizedBox(
                    width:150,
                  child: Stack(
                    children: [
                  Padding(padding: EdgeInsets.only(right:10, top:1),
                   child: Container(
                     margin: EdgeInsets.all(10.0),
                     child: ElevatedButton(
                       style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)) ,
                       onPressed: () {},
                       child: Text('Follow back', style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                         color: Colors.black, ),

                     ),
                     ),
    ),

                 ),
    ],
                  ),
                  ),

                   ],
                  ),
                  Text(bio,style: TextStyle(fontSize: 20),),

                ],
              ),

            ),
          ),
        ],
      );
  }

}
