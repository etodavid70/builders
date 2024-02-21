import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';

class FinalStage extends StatefulWidget {
  const FinalStage({super.key});

  @override
  State<FinalStage> createState() => _FinalStageState();
}

class _FinalStageState extends State<FinalStage> {
  bool _passwordVisible = true;
  bool _passwordVisible2 = true;
  bool _isChecked = false;

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
                child: Image.asset('images/progress3.png')),

            SizedBox(
              height: 20,
            ),

            Text(
              'Further info',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1),
            ),

            SizedBox(
              height: 40,
            ),

            //for full name
            Container(
              width: 300,
              height: 45,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '*enter your name';
                  }
                  return null;
                },
                // controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Github Url',
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
                    borderSide: BorderSide(color: primaryColorFaint, width: 1),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
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
                // controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Portfolio Site',
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
                    borderSide: BorderSide(color: primaryColorFaint, width: 1),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),

            //for number

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
                // controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Linkedin Url',
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
                    borderSide: BorderSide(color: primaryColorFaint, width: 1),
                  ),
                ),
              ),
            ),

            //confirm password

            SizedBox(
              height: 40,
            ),

            GestureDetector(
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  borderRadius: BorderRadius.circular(10)
                ),
                
                child: Center(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload_file_outlined),
                      Text('Upload Picture',  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -1),)
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
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
              height: 40,
            ),
            //button

            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'Proceed',
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
              height: 40,
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
    ));
  }
}
