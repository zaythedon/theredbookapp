import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Redbookheader extends StatelessWidget{

  final String image;
  final String name;
  final String account;
  final int following;
  final int followers;

  const Redbookheader(
  {Key? key, required this.image, required this.account, required this.following, required this.followers, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              child: Image.network(
                image, width: 80,
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(name, style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 20, color: Colors.redAccent)),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(child:Text("@$account", style: GoogleFonts.roboto(),), ),
                Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ),

          Padding(
              padding: const EdgeInsets.only(top:8.0),
            child: Row(
              children: [
                Text(followers.toString(), style: GoogleFonts.roboto(),),
                Text("followers", style: GoogleFonts.roboto()),
                Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(following.toString(), style: GoogleFonts.roboto(),)),
                Text("following", style: GoogleFonts.roboto()),
              ],
            ),
          )


        ],
      ),
    );
  }

  // void debugFillproperties(DiagnosticsPropertiesBuilder properties)
  // {
  //     super.debugFillProperties(properties);
  //     properties.add(StringProperty(name, name));
  // }
}
