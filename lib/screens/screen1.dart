import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {

    final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("signed in as : ${user?.email!}"),
                MaterialButton(onPressed: () { FirebaseAuth.instance.signOut(); },
                  color: Colors.red,
                  child: Text("signout" , style: GoogleFonts.bebasNeue( textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 3,
                  ),),)
                ),
              ],
            ),

         ),
    );
  }
}
