import 'dart:io';
import 'package:flutter/material.dart';
import 'package:theredbookapp/screens/Profile.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:theredbookapp/Backend/UserData.dart';



class EditProfile extends StatefulWidget {

  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
 UserData User = new UserData(" " , "", "");
 final  _userNameController = TextEditingController();
 final  _userBioController = TextEditingController();
 final  _userWebsiteController = TextEditingController();

  XFile? Image_file;
  final ImagePicker pick_image = ImagePicker();

  final globalKey = GlobalKey<FormState>();
  // PickedFile Image_file;
  // final ImagePicker pick_image = ImagePicker();


 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
       leading: const BackButton(
         color: Colors.black
       ),

        elevation: 1,

      ),
        body:SingleChildScrollView(
          child: Column(
            children: [

              ///Save button
          Padding(
          padding:const EdgeInsets.only(
              left: 250,  top: 15),
             child: GestureDetector(
             child:  Text(
                'Save',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
               onTap: () async => {
               User.name = _userNameController.text,
                 User.bio = _userBioController.text,
                 User.website = _userWebsiteController.text,



               Navigator.of(context).pop()},
               //onTap: () => { Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context ) =>  ProfilePage()))},
        )
          ),

            ///Profile image
            SizedBox(
            height: 15,
        ),
            Center(
              child: Stack(
                children: [
              Padding(padding: EdgeInsets.only(right:300, top:1),
                  child: CircleAvatar(
                    radius: 50,
                   backgroundImage:NetworkImage("https://avatars.githubusercontent.com/u/54953858?v=4") ,
                   
                    //backgroundImage:NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541") ,
                    //backgroundImage: Image_file == null? AssetImage("assets/images/profile.png"): FileImage(File(Image_file!.path)),

                     // backgroundImage: AssetImage("assets/images/profile.png"),

                    // backgroundImage: Image_file == null
                    //     ? AssetImage("assets/profile.jpeg")
                    //     : Image.file(File(Image_file!.path)),
                  )
              ),

                     ///Upload image
                  Padding(
                      padding: const EdgeInsets.only( left: 75, top: 75 ),
                     child: GestureDetector(
                       onTap: () => { showModalBottomSheet(context: context, builder: ((builder) => bottomSheet()),)

                       },

                      child: Icon(
                        Icons.add_circle,
                        size: 30,
                      )
                     )
                  ),
                ],

              ) ,

            ),

              ///TextField
              const SizedBox(
                height: 30,

              ),
              buildNameTextField("  Name" ),
              buildBioTextField("  Bio"),
              buildWebsiteTextField("  Website"),

            ],

          ),
        )
    );
  }


  ///bottom window for uploading profile image
  Widget bottomSheet(){
    return Container(
      height: 115,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: [
          Text('Choose Image',
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          SizedBox(
            height: 15,
            width: 25,
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 140,
                child: Column(
                  children:  [
                    Text(
                      'Camera',
                      style:
                      TextStyle(
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    IconButton(onPressed: () async{
                      Image_file = await pick_image.pickImage(source: ImageSource.camera);

                      // setState(() {
                      //  Image_file = Image_file;
                      // });
                    }, icon: const Icon(Icons.camera)),
                  ],
                ),
              ),
              SizedBox(
                width: 140,
                child: Column(
                  children:  [
                    Text(
                      'Gallery',
                      style:
                      TextStyle(
                          fontSize: 20,
                          color: Colors.black),

                    ),
                    IconButton(onPressed: () async {
                      Image_file = await pick_image.pickImage(source: ImageSource.gallery);
                      // final pickedFile = await pick_image.getImage(source: ImageSource.gallery,);
                      // setState(() {
                      //  Image_file = pickedFile;
                      // });
                      }, icon: const Icon(Icons.image)),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  // void chooseImage(ImageSource source) async {
  //   final PickedFile = await pick_image.getImage(source: source);
  //   setState(() {
  //     Image_file = PickedFile;
  //   });
  // }

  Widget buildNameTextField(String label) {
    return Padding(padding: const EdgeInsets.only(bottom: 25),
      child: TextField(
        controller: _userNameController,
    decoration: InputDecoration(

    labelText: label,
    floatingLabelBehavior: FloatingLabelBehavior.always,
         ),
        //maxLength: 12,

         ),
     );
  }
 Widget buildBioTextField(String label) {
   return Padding(padding: const EdgeInsets.only(bottom: 25),
     child: TextField(
       controller: _userBioController,


       decoration: InputDecoration(

         labelText: label,
         floatingLabelBehavior: FloatingLabelBehavior.always,
       ),
       //maxLength: 12,

     ),
   );
 }
 Widget buildWebsiteTextField(String label) {
   return Padding(padding: const EdgeInsets.only(bottom: 25),
     child: TextField(
       controller: _userWebsiteController,

       decoration: InputDecoration(

         labelText: label,
         floatingLabelBehavior: FloatingLabelBehavior.always,
       ),
       //maxLength: 12,

     ),
   );
 }
}

