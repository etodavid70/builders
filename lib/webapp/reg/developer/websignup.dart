import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WebSignUp extends StatefulWidget {
  const WebSignUp({super.key});

  @override
  State<WebSignUp> createState() => _WebSignUpState();
}

class _WebSignUpState extends State<WebSignUp> {
  final _formKey = GlobalKey<FormState>();

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();
  final emailController = TextEditingController();

  bool _passwordVisible = true;
  bool _passwordVisible2 = true;
  bool _isChecked = false;

  Future<void> signup(
      String email, String password, String firstName, String lastName) async {
    var url = Uri.parse('http://127.0.0.1:8000/signup/');

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
            'X-Client-Hash': 'browser-or-mobile-hash',
            'X-Client-Version': 'app-browser-or-mobile-version',
            'X-Device-Type': 'mobile',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
        'first_name': firstName,
        'last_name': lastName
      }),
    );

    if (response.statusCode == 201) {
      print(response.body);
      // Signup successful
      print('Signup successful');
      Navigator.pushNamed(context, '/devskillset');
    } else {
      print('Signup failed');
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:

//the row for the hero section
            Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),

        // border: Border.all(color: Color.fromRGBO(24, 101, 51, 0.3), width: 1),
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset('images/logo2.png'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  width: 300,
                  height: 50,
                  child: Image.asset('images/progress.png')),

              SizedBox(
                height: 20,
              ),

              Text(
                'Account',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1),
              ),

              SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'in',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Signup with Linkedin',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            color: Colors.white,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.32),
                    ),
                    backgroundColor: Color.fromRGBO(0, 65, 130, 1),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                width: 300,
                height: 50,
                child: Image.asset('images/Or.png'),
              ),

              SizedBox(
                height: 20,
              ),
              //for full name
              Container(
                width: 300,
                height: 45,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*enter your First name';
                    }
                    return null;
                  },
                  controller: firstnameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    hintText: '    First name',
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 13,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    hintMaxLines: 1,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // Apply the same or similar border styles as the regular border
                      borderSide:
                          BorderSide(color: primaryColorFaint, width: 1),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                width: 300,
                height: 45,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*enter your Last name';
                    }

                    return null;
                  },
                  controller: lastnameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_outline,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    hintText: '    Last name',
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 13,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    hintMaxLines: 1,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // Apply the same or similar border styles as the regular border
                      borderSide:
                          BorderSide(color: primaryColorFaint, width: 1),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //for email

              Container(
                width: 300,
                height: 45,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*enter your email';
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 15,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    hintText: '    Email',
                    hintStyle: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 13,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    hintMaxLines: 1,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColorFaint,
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // Apply the same or similar border styles as the regular border
                      borderSide:
                          BorderSide(color: primaryColorFaint, width: 1),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //for number

              //for password

              Container(
                width: 300,
                height: 45,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*enter your password';
                    }
                    return null;
                  },
                  controller: passwordController,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      size: 15,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 15,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    hintText: '    Password',
                    hintStyle: TextStyle(fontFamily: 'GT', fontSize: 13),
                    hintMaxLines: 1,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        style: BorderStyle.solid,
                        //Color.fromRGBO(255, 22, 22, 1),
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 0.5),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //confirm password

              Container(
                width: 300,
                height: 45,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*enter your password again';
                    } else if (password2Controller.text !=
                        passwordController.text) {
                      return "this does not match wih the first password";
                    }
                    return null;
                  },
                  controller: password2Controller,
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      size: 15,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 15,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                    hintText: '    Confirm Password',
                    hintStyle: TextStyle(
                      fontFamily: 'GT',
                      fontSize: 13,
                    ),
                    hintMaxLines: 1,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        style: BorderStyle.solid,
                        //Color.fromRGBO(255, 22, 22, 1),
                        width: 0.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 0.5),
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
                    side: BorderSide(width: 0.5),
                    value:
                        _isChecked, // boolean value representing the checkbox state
                    onChanged: (newValue) => setState(() => _isChecked =
                        newValue!), // update state when checkbox is tapped
                    activeColor:
                        primaryColor, // customize checkbox color when checked (optional)
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'I agree to the',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '  Terms and Conditions',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 34,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              //button

              Container(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    onPressed: ()  {
                      if (_formKey.currentState!.validate()) {
                        print('this is before');

                        String email = emailController.text;
                        String password = passwordController.text;
                        String firstName = firstnameController.text;
                        String lastName = lastnameController.text;

                        signup(email, password, firstName, lastName);
                        print(email);
                         print(password);
                          print(firstName);
                           print(lastName);

print('executed');
                      }
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: secondaryColor,
                          fontSize: 13),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
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
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '  Login',
                    style: TextStyle(
                        fontFamily: 'poppins',
                        color: primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'Copyright Builders',
                style: TextStyle(
                    fontFamily: 'poppins',
                    color: primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),

              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
