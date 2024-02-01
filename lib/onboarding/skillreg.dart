import 'package:buildersconnect/reusable/app_colors.dart';
import 'package:flutter/material.dart';

class SkillReg extends StatefulWidget {
  const SkillReg({super.key});

  @override
  State<SkillReg> createState() => _SkillRegState();
}

class _SkillRegState extends State<SkillReg> {
  bool _passwordVisible = false;
  bool _isChecked=false;
  List<String> SkillList=[''];
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
            'Skill Set',
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                letterSpacing: -3),
          ),

          SizedBox(height: 40,),

         Text('Primary Stack',  style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                ),),
                SizedBox(height: 10,),
         Container(
          width: 350,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 128, 1),
                          width: 1,
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
SizedBox(height: 30,),

 Text('Secondary Stack',  style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                ),),
                 SizedBox(height: 10,),
         Container(
          width: 350,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 128, 1),
                          width: 1,
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
SizedBox(height: 30,),

 Text('Tertiary Stack',  style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                ),),
                 SizedBox(height: 10,),
         Container(
          width: 350,
          height: 50,
           child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 128, 1),
                          width: 1,
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
SizedBox(height: 30,),


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
