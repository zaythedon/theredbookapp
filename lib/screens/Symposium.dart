import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


List<String> moderatorNames = const [
  "Anudeep",
  "Hassib",
  "Cynthia",
  "Danny",
];


class ListWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top:16,left:26,right:26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Google - lets build together", style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),),
              SizedBox(width: 4,),
              Icon(Icons.add_to_home_screen_rounded, color: Colors.redAccent, size: 16,),
            ],
          ),

          SizedBox(width: 4,),

          Text("Discussion about Google", style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.black))),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child:Row(
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    height: 80,
                    child: Stack(
                      children: [
                        Positioned(
                          top:0,
                          left: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Image.network("https://avatars.githubusercontent.com/u/80289786?v=4", fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom:0,
                          right: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: Image.network("https://avatars.githubusercontent.com/u/54953858?s=400&u=d9a8095367b1121b20593bf4b3481e6ed273258c&v=4", fit: BoxFit.cover,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: ListView.builder(shrinkWrap:true, itemCount:moderatorNames.length, itemBuilder: (context, index)
                    {
                      return Row(
                        children: [
                          Text(moderatorNames[index], style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w300),),),
                          SizedBox(width: 4,),
                          Icon(Icons.coffee, color: Colors.redAccent, size:9),
                        ],
                      );
                    },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: Container(),),
              Expanded(flex: 5, child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("234", style: GoogleFonts.roboto(textStyle: TextStyle(color:Colors.black45, fontWeight: FontWeight.w200, fontSize: 15)),
                    ),
                    Icon(Icons.person, color: Colors.redAccent,size: 16,),
                    Text(" / ", style: TextStyle(fontWeight: FontWeight.w300),),
                    Text("Number of mode", style: TextStyle(fontWeight: FontWeight.w200),),
                    Icon(Icons.remove_red_eye, color: Colors.redAccent,),
                  ],
                ),
              ),),

            ],
          ),
        ],
      ),
    );
  }
}

class Symposium extends StatelessWidget{
  const Symposium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Symposium", style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.redAccent)),)
      ),

      body: ListView.builder( shrinkWrap:true, itemCount: 10, itemBuilder: (context, index){
        return ListWidget();
      }),
    );
  }
}


