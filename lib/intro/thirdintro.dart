import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';

class ThirdIntro extends StatefulWidget {
  const ThirdIntro({super.key});

  @override
  State<ThirdIntro> createState() => _ThirdIntroState();
}

class _ThirdIntroState extends State<ThirdIntro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset('images/logo.png'),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              height: 300,
              width: 400,
              child: Image.asset('illustrations/team.png')),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 40,),
              const Text(
                '''Are you an HR personnel
Looking to collaborate with recruit 
competent Tech Talents for your 
Organization?''',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          
          

          SizedBox(height: 50,),

          Container(
            height: 60,
                  width: 350,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/gotosignup');
                },
                child: Text(
                  'GET STARTED',
                  style: TextStyle(fontFamily: 'poppins', color: secondaryColor, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: primaryColor,
                )),
          ),

SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              
              Text('Dont have an accout?', style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.normal),),
SizedBox(width: 3,),
                     Text('Create a new account', style: TextStyle(
                color: primaryColor,
                fontFamily: 'poppins',
                fontSize: 15,
                fontWeight: FontWeight.bold),)
            ],
          ),

                 
        ],
      ),
    );
  }
}
