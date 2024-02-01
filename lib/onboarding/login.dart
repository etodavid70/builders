import 'package:buildersconnect/reusable/app_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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


  Image.asset('images/person_icon.png'),

          Text(
            'Welcome Back!',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                letterSpacing: -3),
          ),
                    Text(
            'Login to continue',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                ),
          ),

          SizedBox(
            height: 40,
          ),

//for full name
          Container(
            width: 350,
            height: 50,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '*enter your name';
                }
                return null;
              },
              // controller: nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person_outline,
                  size: 20,
                ),
                hintText: '     Username or Email',
                hintStyle: TextStyle(fontFamily: 'poppins', fontSize: 15),
                hintMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                    style: BorderStyle.solid,
                    //Color.fromRGBO(255, 22, 22, 1),
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  // Apply the same or similar border styles as the regular border
                  borderSide: BorderSide(color: primaryColor, width: 1.5),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

//for email

       

        

          //for password

          Container(
            width: 350,
            height: 50,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '*enter your password';
                }
                return null;
              },
              // controller: emailController,
              obscureText: _passwordVisible,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outlined,
                  size: 20,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                hintText: 'Password',
                hintStyle: TextStyle(fontFamily: 'GT', fontSize: 13),
                hintMaxLines: 1,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                    style: BorderStyle.solid,
                    //Color.fromRGBO(255, 22, 22, 1),
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 1.5),
                ),
              ),
            ),
          ),

 SizedBox(
            height: 20,
          ),

//confirm password

 

          //check box




Text('  Forgot password', style: TextStyle(fontFamily: 'poppins', color: primaryColor, fontSize: 12, fontWeight: FontWeight.bold),),

            
          

SizedBox(height: 20,),
          //button

          Container(
            height: 60,
                  width: 350,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'LOGIN',
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
              Text('Dont have an account?', style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500),),
              Text('  Create an account', style: TextStyle(fontFamily: 'poppins', color: primaryColor, fontSize: 12, fontWeight: FontWeight.bold),),
            ],
          ),


        ],
      ),
    );
  }
}
