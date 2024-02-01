import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';

class GotoSignUp extends StatefulWidget {
  const GotoSignUp({super.key});

  @override
  State<GotoSignUp> createState() => _GotoSignUpState();
}

class _GotoSignUpState extends State<GotoSignUp> {
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
            height: 10,
          ),
          Container(
              height: 280,
              width: 280,
              child: Image.asset('illustrations/developer3.png')),
         
          Container(
            height: 60,
                  width: 350,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/devsignup');
                },
                child: Text(
                  'DEVELOPER',
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

 Container(
              height: 280,
              width: 280,
              child: Image.asset('illustrations/interview.png')),
         
          Container(
            height: 60,
                  width: 350,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'RECRUITER',
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

              
              Text('Have an account?', style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w400),),
SizedBox(width: 3,),
                     Text('Login', style: TextStyle(
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
