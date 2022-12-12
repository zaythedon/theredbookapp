import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theredbookapp/screens/Archive_draw.dart';
import 'package:theredbookapp/screens/PostWidget.dart';

import '../util/RedBookDraw.dart';
import 'Redbook.dart';

class Archive extends StatefulWidget {

  const Archive({Key? key}) : super(key: key);

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2,
        title: Text("Archive", style: GoogleFonts.bebasNeue(textStyle: TextStyle(fontSize: 40, color: Colors.redAccent)),),
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
    Archive_draw(),

    ].elementAt(current),
    ),
    );
  }
}
