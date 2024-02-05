import 'package:buildersconnect/intro/gotosignup.dart';
import 'package:buildersconnect/onboarding/login.dart';
import 'package:buildersconnect/onboarding/skillreg.dart';
import 'package:flutter/material.dart';
import 'intro/firstintro.dart';
import 'intro/secondintro.dart';
import 'intro/thirdintro.dart';
import 'onboarding/devsignup.dart';
import 'onboarding/skillreg.dart';
import 'webapp/landingpage.dart';
import 'webapp/registration/websignup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(24, 101, 51, 1)),
        useMaterial3: true,
      ),
     
debugShowCheckedModeBanner: false,

     initialRoute: '/',
     routes: {

      //mobile
'/intro': (context) => FirstIntro(),
'/secondintro': (context) => SecondIntro(),
'/thirdintro': (context) => ThirdIntro(),
'/gotosignup': (context) => GotoSignUp(),
'/devsignup': (context) => DevSignUp(),
'/skillreg':  (context) => SkillReg(),
'/login':  (context) => Login(),

//web
'/': (context) => LandingPage(),
'/websignup': (context) =>  WebSignUp()
     },
    );
  }
}

