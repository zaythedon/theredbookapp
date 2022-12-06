import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//dependencies import statements
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterpage;
  const LoginPage({Key? key, required this.showRegisterpage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text.trim());
  }
  @override
  void dispose()
  {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Stack(
            children:[
              //background
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(

                        image: AssetImage('assets/images/loginBG1.jpg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft
                    )
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 4, sigmaY: 5
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(.150),
                  ),
                ),),

              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
            //     Icon(
            //   Icons.auto_stories,
            //   size: 150,color: Colors.white,
            // ),
               SizedBox(height: 50),
            // welcome address
               Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: 20.0, height: 100.0),
                Text("HELLO", style:GoogleFonts.bebasNeue(textStyle:TextStyle(fontSize: 96, color: Colors.white))),
                const SizedBox(width: 20.0, height: 110.0),
                AnimatedTextKit(
                animatedTexts: [
                TyperAnimatedText(
                'THERE !',
                    textStyle : GoogleFonts.bebasNeue(textStyle:TextStyle(fontSize: 93, color: Colors.red, fontWeight: FontWeight.bold),),
                    speed: const Duration(milliseconds: 200),
                ),
                ],
                  repeatForever: true,
                  isRepeatingAnimation: false,

                ),

              ],
            ),

                SizedBox(height: 20,),

                // email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),

                ),


                SizedBox(height: 20,),


                //password text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password'
                        ),
                      ),
                    ),
                  ),
                ),


                SizedBox(height: 20,),

                //sigin
               Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: signIn,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)
                  ),

                  child: Center(
                    child: Text("Sign In",
                    style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 3,
                      ),
                    ),
                    ),
                  ),
                ),
              ),
            ),

             SizedBox(height: 13,),
                //register prompt
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                "Not a member yet ?",
                style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )
                ),
              ),
               SizedBox(width:5),
                GestureDetector(
                  onTap: widget.showRegisterpage,
                  child: Text(
                  "REGISTER",
                  style: GoogleFonts.bebasNeue(
                      textStyle: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                  ),
              ),
                ),
            ],
            ),



              ],
            ),
          ],
          ),
        ),
      ),


    );
  }
}
