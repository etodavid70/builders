import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';

class SecondIntro extends StatefulWidget {
  const SecondIntro({super.key});

  @override
  State<SecondIntro> createState() => _SecondIntroState();
}

class _SecondIntroState extends State<SecondIntro> {
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
            height: 20,
          ),
          Container(
              height: 400,
              width: 400,
              child: Image.asset('illustrations/connect.png')),
          const Text(
            '''Are you a Lead Developer
Looking to build a team for a
Project?''',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          
          

          SizedBox(height: 40,),

          Container(
            height: 60,
                  width: 350,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/thirdintro');
                },
                child: Text(
                  'NEXT',
                  style: TextStyle(fontFamily: 'poppins', color: secondaryColor, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: primaryColor,
                )),
          ),

SizedBox(height: 20,),

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
