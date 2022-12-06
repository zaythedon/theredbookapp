import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theredbookapp/screens/Profile.dart';

class Drawing extends StatelessWidget {

  final Icon icon;
  final String label;

  const Drawing({Key? key, required this.icon, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => { Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context ) => ProfilePage()))},
      //onTap: () => { FirebaseAuth.instance.signOut()},
      child: Row(
        children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: icon,
      ),

      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(label, style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.redAccent)),),
        ),
      ),
  ],
      ),
    );
  }
}
