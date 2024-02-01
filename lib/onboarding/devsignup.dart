import 'package:buildersconnect/reusable/app_colors.dart';
import 'package:flutter/material.dart';

class DevSignUp extends StatefulWidget {
  const DevSignUp({super.key});

  @override
  State<DevSignUp> createState() => _DevSignUpState();
}

class _DevSignUpState extends State<DevSignUp> {
  bool _passwordVisible = false;
  bool _isChecked=false;
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
            height: 40,
          ),
          Text(
            'Create Account',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                letterSpacing: -3),
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
                hintText: '     Full name',
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
                  Icons.email_outlined,
                  size: 20,
                ),
                hintText: '     Email',
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

          //for number

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
                  Icons.phone_iphone_outlined,
                  size: 20,
                ),
                hintText: '     Phone number',
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
                  borderSide: BorderSide(color: primaryColor, width: 1.5),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

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
                hintText: 'Confirm Password',
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
SizedBox(height: 20,),

          //check box

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
  value: _isChecked, // boolean value representing the checkbox state
  onChanged: (newValue) => setState(() => _isChecked = newValue!), // update state when checkbox is tapped
  activeColor: primaryColor, // customize checkbox color when checked (optional)
),

Text('I agree to the', style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500),),

Text('  Terms and Conditions', style: TextStyle(fontFamily: 'poppins', color: primaryColor, fontSize: 12, fontWeight: FontWeight.bold),),

            ],
          ),

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
                  'SUBMIT',
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
              Text('Have an account?', style: TextStyle(fontFamily: 'poppins', fontSize: 12, fontWeight: FontWeight.w500),),
              Text('  Login', style: TextStyle(fontFamily: 'poppins', color: primaryColor, fontSize: 12, fontWeight: FontWeight.bold),),
            ],
          ),


        ],
      ),
    );
  }
}
