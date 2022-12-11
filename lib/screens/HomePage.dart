import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theredbookapp/screens/Archive.dart';
import 'package:theredbookapp/screens/Redbook.dart';
import 'package:theredbookapp/screens/Symposium.dart';
import 'package:theredbookapp/util/RedBookDraw.dart';

import '../util/Redbookheader.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser!;
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2,
        title: Text("The RedBook", style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 40, color: Colors.redAccent)),),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(200)),
                  child: Image.network("https://avatars.githubusercontent.com/u/54953858?v=4",
                  ),
                ),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_active,
            )
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.mail,
              )
          )
        ],

      ),
      drawer:
        RedBookDraw(),

      body: Container(
        child:[
          Redbook(),

        ].elementAt(current),
      ),
          
      
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: current==0? Icon(Icons.home_rounded , color: Colors.redAccent,):Icon(Icons.home_rounded ),
              label: " "
            ),
            BottomNavigationBarItem(
                icon: current==1? GestureDetector(
                  onTap:  () => {
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Symposium()))},
                  child: Icon(Icons.style, color: Colors.redAccent,),):GestureDetector(
                  onTap:  () => {Symposium()},
                  child: Icon(Icons.style, color: Colors.black,),),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: current==2? Icon(Icons.add_call, color: Colors.redAccent,):Icon(Icons.add_call),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: current==3? GestureDetector(
                  onTap:  () => {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Archive()))},
                  child: Icon(Icons.person, color: Colors.redAccent,),):GestureDetector(
                  onTap:  () => {Archive()},
                  child: Icon(Icons.person, color: Colors.black,),),
                label: ""
            ),
          ],
        ),
    );
  }
}
