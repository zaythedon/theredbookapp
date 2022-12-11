import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theredbookapp/auth/Signup.dart';
import 'package:theredbookapp/auth/login_page.dart';
import 'package:theredbookapp/screens/HomePage.dart';
import 'package:theredbookapp/screens/screen1.dart';
import 'package:theredbookapp/screens/Profile.dart';



class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData)
          {
            // return Homepage();
            return ProfilePage();
          }
        else
          {
            return Signup();
          }
      }),
      );
  }
}
