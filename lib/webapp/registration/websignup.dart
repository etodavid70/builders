import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';

class WebSignUp extends StatefulWidget {
  const WebSignUp({super.key});

  @override
  State<WebSignUp> createState() => _WebSignUpState();
}

class _WebSignUpState extends State<WebSignUp> {
  bool _passwordVisible = true;
  bool _passwordVisible2 = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:

//the row for the hero section
            Row(

              
              children: [
                Container(
                  child: Image.asset('illustrations/developer.png'),
                ),
                Container(
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    
                   // border: Border.all(color: Color.fromRGBO(24, 101, 51, 0.3), width: 1),
                  ),
                  child: Column(
                    children: [
                      

                      Image.asset('images/logo2.png'),
                      SizedBox(
                        height: 10,
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
                        width: 250,
                        height: 30,
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
                              size: 15,
                            ),
                            hintText: '     Full name',
                            hintStyle:
                                TextStyle(fontFamily: 'poppins', fontSize: 10),
                            hintMaxLines: 1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                style: BorderStyle.solid,
                                //Color.fromRGBO(255, 22, 22, 1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // Apply the same or similar border styles as the regular border
                              borderSide: BorderSide(color: primaryColor, width: 1),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //for email

                      Container(
                        width: 250,
                        height: 30,
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
                              size: 15,
                            ),
                            hintText: '     Email',
                            hintStyle:
                                TextStyle(fontFamily: 'poppins', fontSize: 10),
                            hintMaxLines: 1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                style: BorderStyle.solid,
                                //Color.fromRGBO(255, 22, 22, 1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // Apply the same or similar border styles as the regular border
                              borderSide:
                                  BorderSide(color: primaryColor, width: 1.5),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //for number

                      Container(
                        width: 250,
                        height: 30,
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
                              size: 15,
                            ),
                            hintText: '     Phone number',
                            hintStyle:
                                TextStyle(fontFamily: 'poppins', fontSize: 10),
                            hintMaxLines: 1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                style: BorderStyle.solid,
                                //Color.fromRGBO(255, 22, 22, 1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 1.5),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //for password

                      Container(
                        width: 250,
                        height: 30,
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
                              size: 15,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility, size: 15,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(fontFamily: 'GT', fontSize: 10),
                            hintMaxLines: 1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                style: BorderStyle.solid,
                                //Color.fromRGBO(255, 22, 22, 1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 1.5),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      //confirm password

                      Container(
                        width: 250,
                        height: 30,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '*enter your password';
                            }
                            return null;
                          },
                          // controller: emailController,
                          obscureText: _passwordVisible2,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                              size: 15,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility_off
                                    : Icons.visibility, size: 15,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible2 = !_passwordVisible2;
                                });
                              },
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(fontFamily: 'GT', fontSize: 10),
                            hintMaxLines: 1,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: primaryColor,
                                style: BorderStyle.solid,
                                //Color.fromRGBO(255, 22, 22, 1),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: primaryColor, width: 1.5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //check box

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value:
                                _isChecked, // boolean value representing the checkbox state
                            onChanged: (newValue) => setState(() => _isChecked =
                                newValue!), // update state when checkbox is tapped
                            activeColor:
                                primaryColor, // customize checkbox color when checked (optional)
                          ),
                          Text(
                            'I agree to the',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '  Terms and Conditions',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                color: primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      //button

                      Container(
                        width: 250,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  color: secondaryColor,
                                  fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              backgroundColor: primaryColor,
                            )),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Have an account?',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '  Login',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                color: primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ));
  }
}
