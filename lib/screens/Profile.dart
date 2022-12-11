
import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/EditProfile.dart';
import 'package:theredbookapp/screens/HomePage.dart';
import 'package:theredbookapp/screens/Redbook.dart';
import 'package:theredbookapp/screens/Profile_CampusWidget.dart';
import 'package:theredbookapp/util/TabBar_view_Redbook.dart';
import 'package:theredbookapp/util/TabBar_view_Campus.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theredbookapp/util/userFollower.dart';
import 'package:theredbookapp/util/userFollowing.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 1,
          leading:IconButton(onPressed:() => {
                                      Navigator.pushReplacement(context,
                                       MaterialPageRoute(builder: (context) => Homepage()))}, icon: const Icon(Icons.arrow_back), tooltip: "back button")
        ),

        body: SingleChildScrollView(

          child: Column(

            children: [
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),

                  child: Column(
                   // crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      ///Edit button
                      SizedBox(
                        height: 40,

                        child: Stack(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 340, top: 15),
                               child: GestureDetector(

                                  child: const Text(
                                    'Edit',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),

                                  onTap: () =>
                                  {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (BuildContext context) => EditProfile()))



                                  },

                               )
                            )
                          ],
                        ),
                      ),

                      ///User profile image and account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      SizedBox(
                        //height: 15,
                        width: 5,
                      ),
                      Center(
                          child: Stack(
                            children: [
                              Padding(padding: EdgeInsets.only(right:300, top:1),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:NetworkImage("https://avatars.githubusercontent.com/u/54953858?v=4") ,
                              )
                              ),
                          // SizedBox(
                          //   //height: 15,
                          //   width: 5,
                          // ),
                          Padding(
                            padding:  EdgeInsets.only(
                                left: 130, top: 40),

                            child: Text(
                              '@AK7781',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
            ],
                          ),
                      ),
                  ],
              ),

                      ///User name, Bio and website
                      const SizedBox(
                        height: 1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: 140, top: 15),

                        child: Text(
                          'sai vishnu anudeep kadiyala',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            right: 285, top: 10),

                        child: Text(
                          'Hello! This is Sai',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: 300, top: 10),

                        child: Text(
                          'redbook.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),

                      ///Users followers and following
                      SizedBox(
                        height: 15,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Stack(
                              children: [
                              Padding(
                                padding:  EdgeInsets.only(
                                    right: 60, top: 10),
                              child: GestureDetector(
                                child: Text(
                                  //'100 followers',
                                " 100 follower",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                            onTap: () => { Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => userFollower()))},
                              )
                              ),
                              ],

                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: Stack(
                              children:  [
                              Padding(
                                padding:  EdgeInsets.only(
                                    right: 80, top: 10),
                               child: GestureDetector(
                               child: Text(
                                  '1 following',
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),

                                ),
                                 onTap: () => { Navigator.of(context).push(MaterialPageRoute(
                                     builder: (BuildContext context) => userFollowing()))}),
                              ),
                              ],

                            ),
                          ),
                        ],
                      ),

                      ///Tab control and Tab view for the posts, archive, DM
                      const SizedBox(
                        height: 3,
                      ),

                      TabBar(
                        indicatorColor: Colors.redAccent,
                        tabs: [ Tab(child: Text(
                          'Redbook',
                          style:
                          TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),),
                          icon: Icon(Icons.book, color: Colors.red,),

                        ),
                          Tab(child: Text('Campus', style:
                          TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),),
                          icon: Icon(Icons.grid_4x4_rounded, color: Colors.black,)),
                        ],
                      ),
                      Expanded(child: TabBarView(children: [
                        TabBar_view_Redbook(),
                        TabBar_view_Campus(),


                      ],
                      ),
                      ),
                    ],
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}



