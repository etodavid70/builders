import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';

class DevSkillSet extends StatefulWidget {
  const DevSkillSet({super.key});

  @override
  State<DevSkillSet> createState() => _DevSkillSetState();
}

class _DevSkillSetState extends State<DevSkillSet> {
  bool _passwordVisible = true;
  bool _passwordVisible2 = true;
  bool _isChecked = false;
 List<String> SkillList=[''];
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
                SizedBox(width: 20,),
                Image.asset('images/logo2.png'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 300,
                height: 50,
                child: Image.asset('images/progress2.png')),

            SizedBox(
              height: 20,
            ),

            Text(
              'Skill-Set/Location',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1),
            ),

            SizedBox(
              height: 40,
            ),

             Text(
              'Primary Stack',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1),
            ),

            SizedBox(
              height: 10,
            ),

          
Container(
          width: 300,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: primaryColorFaint,
                          width: 0.8,)),
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          
                          color: primaryColorFaint,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Value initially selected
                    value: SkillList[0],
                    // Items in the dropdown menu
                    items: SkillList.asMap()
                        .entries
                        .map((MapEntry<int, String> entry) {
                      return DropdownMenuItem<String>(
                        value: entry.value,
                        child: Text(entry.value),
                      );
                    }).toList(),
         
                    onChanged: (String? newValue) async {
                      
                    },
                  ),
         ),
           
SizedBox(height: 20,),


Text(
              'Primary Language',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1),
            ),

            SizedBox(
              height: 10,
            ),

          
Container(
          width: 300,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: primaryColorFaint,
                          width: 0.8,)),
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          
                          color: primaryColorFaint,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Value initially selected
                    value: SkillList[0],
                    // Items in the dropdown menu
                    items: SkillList.asMap()
                        .entries
                        .map((MapEntry<int, String> entry) {
                      return DropdownMenuItem<String>(
                        value: entry.value,
                        child: Text(entry.value),
                      );
                    }).toList(),
         
                    onChanged: (String? newValue) async {
                      
                    },
                  ),
         ),
SizedBox(height: 20,),


          Text(
              'Secondary Stack',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1),
            ),

            SizedBox(
              height: 10,
            ),

          
Container(
          width: 300,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: primaryColorFaint,
                          width: 0.8,)),
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          
                          color: primaryColorFaint,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Value initially selected
                    value: SkillList[0],
                    // Items in the dropdown menu
                    items: SkillList.asMap()
                        .entries
                        .map((MapEntry<int, String> entry) {
                      return DropdownMenuItem<String>(
                        value: entry.value,
                        child: Text(entry.value),
                      );
                    }).toList(),
         
                    onChanged: (String? newValue) async {
                      
                    },
                  ),
         ),
           
SizedBox(height: 20,),

 Text(
              'Interested in',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1),
            ),

            SizedBox(
              height: 10,
            ),

          
Container(
          width: 300,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: primaryColorFaint,
                          width: 0.8,)),
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          
                          color: primaryColorFaint,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Value initially selected
                    value: SkillList[0],
                    // Items in the dropdown menu
                    items: SkillList.asMap()
                        .entries
                        .map((MapEntry<int, String> entry) {
                      return DropdownMenuItem<String>(
                        value: entry.value,
                        child: Text(entry.value),
                      );
                    }).toList(),
         
                    onChanged: (String? newValue) async {
                      
                    },
                  ),
         ),
           
SizedBox(height: 20,),

Text(
              'Location',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  ),
            ),
SizedBox(height: 20,),

 Text(
              'Country',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1),
            ),

            SizedBox(
              height: 10,
            ),

          
Container(
          width: 300,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: primaryColorFaint,
                          width: 0.8,)),
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          
                          color: primaryColorFaint,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Value initially selected
                    value: SkillList[0],
                    // Items in the dropdown menu
                    items: SkillList.asMap()
                        .entries
                        .map((MapEntry<int, String> entry) {
                      return DropdownMenuItem<String>(
                        value: entry.value,
                        child: Text(entry.value),
                      );
                    }).toList(),
         
                    onChanged: (String? newValue) async {
                      
                    },
                  ),
         ),
           
SizedBox(height: 20,),

Text(
              'State',
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  letterSpacing: -1),
            ),

            Container(
          width: 300,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide( color: primaryColorFaint,
                          width: 0.8,)),
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                          
                          color: primaryColorFaint,
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Value initially selected
                    value: SkillList[0],
                    // Items in the dropdown menu
                    items: SkillList.asMap()
                        .entries
                        .map((MapEntry<int, String> entry) {
                      return DropdownMenuItem<String>(
                        value: entry.value,
                        child: Text(entry.value),
                      );
                    }).toList(),
         
                    onChanged: (String? newValue) async {
                      
                    },
                  ),
         ),
           


SizedBox(height: 60),

            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/devfinalstage');
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

            SizedBox(height: 20,),

            Text(
                  'Copyright Builders',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),


                SizedBox(height: 40,),
          ],
        ),
      ),
    ));
  }
}
