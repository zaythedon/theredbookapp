import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/Symposium.dart';
import 'package:theredbookapp/util/Drawing.dart';
import 'package:theredbookapp/util/Redbookheader.dart';

class RedBookDraw extends StatelessWidget {
  const RedBookDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Redbookheader(
            //image: "https://media-exp1.licdn.com/dms/image/C4E03AQGb9fj3h6Ladg/profile-displayphoto-shrink_200_200/0/1662221411927?e=1668038400&v=beta&t=2sgn-TcK6sFs3dfUMmG-jF548w8qnaRxiTug8ejGNn0",
            image: "https://avatars.githubusercontent.com/u/54953858?v=4" ,
            name: "sai vishnu anudeep kadiyala",
            account: "AK7781",
            following: 1,
            followers: 100,
          ),
          Divider(),

          GestureDetector(
            onTap: () => {FirebaseAuth.instance.signOut()},
              child: Drawing(icon: Icon(Icons.account_circle), label: "Profile")
          ),

           GestureDetector(
            onTap: () => {FirebaseAuth.instance.signOut()},
            child:Drawing(icon: Icon(Icons.style), label: "Campus"),
          ),

          GestureDetector(
            onTap: () => {Navigator.push(context,
            MaterialPageRoute(builder: (context) => Symposium()))},
            child:Drawing(icon: Icon(Icons.add_call), label: "Symposium"),
          ),

          Drawing(icon: Icon(Icons.bookmark), label: "Archive"),

          Divider(),

          Drawing(icon: Icon(Icons.settings), label: "Settings"),
          Drawing(icon: Icon(Icons.person), label: "Customer Service"),

          Divider(),

          GestureDetector(
            onTap: () => {FirebaseAuth.instance.signOut()},
            child: Drawing(icon: Icon(Icons.login), label: "Signout"),
          ),

        ],
      ),
    );
  }
}
