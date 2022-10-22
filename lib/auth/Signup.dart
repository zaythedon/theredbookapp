import 'package:flutter/material.dart';
import 'package:theredbookapp/auth/Register.dart';
import 'package:theredbookapp/auth/login_page.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool showLoginpage = true;
  void toggleScreen()
  {
      setState(() {
        showLoginpage = !showLoginpage;
      });
  }
  @override
  Widget build(BuildContext context) {
   if(showLoginpage)
     {
       return LoginPage(showRegisterpage: toggleScreen,);
     }
   else{
     return Register(showLoginPage: toggleScreen,);
   }
  }
}
