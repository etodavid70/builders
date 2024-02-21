import 'package:flutter/material.dart';
import 'package:buildersconnect/reusable/app_colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [

//navigation
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('images/logo2.png'),

                  SizedBox(
                    width: 600,
                  ),

                  //navigation
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Developer',
                      style: TextStyle(
                          fontFamily: 'poppings',
                          fontSize: 21.26,
                          fontWeight: FontWeight.normal,
                          letterSpacing: -1,
                          color: primaryColor),
                    ),
                  ),

                  SizedBox(
                    width: 50,
                  ),

                  //navigation

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Team Lead',
                      style: TextStyle(
                          fontFamily: 'poppings',
                          fontSize: 21.26,
                          fontWeight: FontWeight.normal,
                          letterSpacing: -1,
                          color: primaryColor),
                    ),
                  ),

                  SizedBox(
                    width: 50,
                  ),

                  //navigation

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'About Us',
                      style: TextStyle(
                          fontFamily: 'poppings',
                          fontSize: 21.26,
                          fontWeight: FontWeight.normal,
                          letterSpacing: -1,
                          color: primaryColor),
                    ),
                  ),
                ],
              ),

//hero section
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //spacing
                  SizedBox(
                    height: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //row for the first line of text
                      Row(
                        children: [
                          Text(
                            'We Provide',
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: primaryColor),
                          ),
                          Text(
                            '  the 3 Essentials',
                            style: TextStyle(
                                fontFamily: 'poppings',
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: Colors.black),
                          ),
                        ],
                      ),

                      //end of row

                      Text(
                        'Connection',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),
                      Text(
                        'Collaboration',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),

                      Text(
                        'Project Management',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),

                      SizedBox(height: 20),
                      Text(
                        '''An integrated, end-to-end platform to instantly
 match global technologists 
with companies seeking to bolster IT team
 capacity and skill sets. ''',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    ],
                  ),

                  //spacing between the boxes
                  SizedBox(
                    width: 80,
                  ),

                  //image
                  Column(
                    children: [
                      Container(
                          height: 400,
                          width: 600,
                          child: Image.asset('images/com.png')),
                    ],
                  ),
                ],
              ),
  SizedBox(height: 20),
//cta buttons

              Row(
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onHover: (value) {
                        ElevatedButton.styleFrom(backgroundColor: Colors.white);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(5, 5)),
                        ),
                        backgroundColor: primaryColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                              width: 1
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                          ),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1)),

                          
                      onPressed: () {
                        _showDialog(context);
                        // Navigator.pushNamed(context, '/websignup');
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),

//end of buttons
//end of hero section of page1


//spacing
              SizedBox(
                height: 100,
              ),

//tittle2
              Text(
                'Are You a Recruiter?',
                style: TextStyle(
                    fontFamily: 'poppings',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.5)),
              ),

//spacing
              SizedBox(
                height: 100,
              ),
//hero section of page2
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
//spacing
                  SizedBox(
                    height: 150,
                  ),

//image
                  Column(
                    children: [
                      Container(
                          height: 400,
                          width: 600,
                          child: Image.asset('illustrations/interview.png')),
                    ],
                  ),

 //spacing between the boxes
                  SizedBox(
                    width: 80,
                  ),

//headers
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //row for the first line of text

                      Text(
                        '''Streamline Your Hiring Process''',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -2,
                            color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Connect ',
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: primaryColor),
                          ),
                          Text(
                            '''with Technologists''',
                            style: TextStyle(
                                fontFamily: 'poppings',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -2,
                                color: Colors.black),
                          ),
                        ],
                      ),

                      //end of row

                      Text(
                        'Skills, experience, and preferred ',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),
                     
                     Text(
                        'Work style.',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),
                     

                      SizedBox(height: 20),
                      Text(
                        '''An integrated, end-to-end platform to instantly
 match global technologists 
with companies seeking to bolster IT team
 capacity and skill sets. ''',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    ],
                  ),
                ],
              ),

SizedBox(height: 20,),
//cta buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                              width: 1
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                          ),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1)),
                      onPressed: () {},
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                          ),
                          backgroundColor: primaryColor),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: Colors.white),
                      ),
                    ),
                  ),

                   SizedBox(
                    width: 140,
                  ),
                ],
              ),
SizedBox(height: 100,),
//title3
  Text(
                'Work with Anyone, anywhere around the world',
                style: TextStyle(
                    fontFamily: 'poppings',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.5)),
              ),

SizedBox(height: 50,),

//hero section page3
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //spacing
                  SizedBox(
                    height: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //row for the first line of text
                      Row(
                        children: [
                          Text(
                            'Collaborate',
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: primaryColor),
                          ),
                          Text(
                            '  Globally with',
                            style: TextStyle(
                                fontFamily: 'poppings',
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: Colors.black),
                          ),
                        ],
                      ),

                      //end of row

                      Text(
                        'Amazing Talents',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),
                      Text(
                        'Actively Seeking',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),

                      Text(
                        'Remote Work',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),

                      SizedBox(height: 20),
                      Text(
                        '''An integrated, end-to-end platform to instantly
 match global technologists 
with companies seeking to bolster IT team
 capacity and skill sets. ''',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    ],
                  ),

                  //spacing between the boxes
                  SizedBox(
                    width: 80,
                  ),

                  //image
                  Column(
                    children: [
                      Container(
                          height: 400,
                          width: 600,
                          child: Image.asset('images/remote.png')),
                    ],
                  ),
                ],
              ),

SizedBox(height: 20),
//cta buttons
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onHover: (value) {
                        ElevatedButton.styleFrom(backgroundColor: Colors.white);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(5, 5)),
                        ),
                        backgroundColor: primaryColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                 Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                              width: 1
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                          ),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1)),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),


SizedBox(height: 100),


//title4

Text(
                '''Manage All your Projects on our Platform ''',
                style: TextStyle(
                    fontFamily: 'poppings',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.5)),
              ),


//hero section of page4
                 Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
//spacing
                  SizedBox(
                    height: 150,
                  ),

//image
                  Column(
                    children: [
                      Container(
                          height: 400,
                          width: 600,
                          child: Image.asset('images/app.png')),
                    ],
                  ),

 //spacing between the boxes
                  SizedBox(
                    width: 50,
                  ),

//headers
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //row for the first line of text
Text(
                            '''
Manage your Projects''',
                            style: TextStyle(
                                fontFamily: 'poppings',
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: primaryColor),
                          ),
                     
                      Text(
                        '''on our Platform with our Project
Management Software''',
                        style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 45,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -2,
                            color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          
                        ],
                      ),
                      //end of row

                     
                     

                      SizedBox(height: 20),
                      Text(
                        '''An integrated, end-to-end platform to instantly
 match global technologists 
with companies seeking to bolster IT team
 capacity and skill sets. ''',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),
                    ],
                  ),
                ],
              ),

SizedBox(height: 20,),
//cta buttons

 Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                              width: 1
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                          ),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1)),
                      onPressed: () {},
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: primaryColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                          ),
                          backgroundColor: primaryColor),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: Colors.white),
                      ),
                    ),
                  ),

              SizedBox(
                    width: 170,
                  ),
                ],
              ),         


SizedBox(height: 100,),


Text(
                "Are you a Technologist? We've got you Covered",
                style: TextStyle(
                    fontFamily: 'poppings',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.5)),
              ),

SizedBox(height: 150,),

//hero section page3
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //spacing
                  SizedBox(
                    height: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //row for the first line of text
                      Row(
                        children: [
                          Text(
                            'Connect',
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: primaryColor),
                          ),
                          Text(
                            '  With Recruiters and',
                            style: TextStyle(
                                fontFamily: 'poppings',
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -2,
                                color: Colors.black),
                          ),
                        ],
                      ),

                      //end of row

                      Text(
                        'get remote & On-Site Offers.',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Colors.black),
                      ),
                      

                      SizedBox(height: 20),
                      Text(
                        '''An integrated, end-to-end platform to instantly
 match global technologists 
with companies seeking to bolster IT team
 capacity and skill sets. ''',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            letterSpacing: -1,
                            color: Color.fromRGBO(0, 0, 0, 0.5)),
                      ),


                     SizedBox(height: 20),
//cta buttons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onHover: (value) {
                        ElevatedButton.styleFrom(backgroundColor: Colors.white);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(5, 5)),
                        ),
                        backgroundColor: primaryColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                 Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                              width: 1
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(5, 5)),
                          ),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1)),
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'poppings',
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0,
                            color: primaryColor),
                      ),
                    ),
                  ),
                ],
              ),


                    ],
                  ),

                  //spacing between the boxes
                  SizedBox(
                    width: 80,
                  ),

                  //image
                  Column(
                    children: [
                      Container(
                          height: 350,
                          width: 600,
                          child: Image.asset('images/developer.png')),
                    ],
                  ),
                ],
              ),

SizedBox(height: 200),

Container(
height: 150,
width: 1500,
  color: primaryColor,
  child: Row(
    children: [
SizedBox(width: 500),
      Icon(Icons.facebook_outlined, color: Color.fromRGBO(255, 255, 255, 0.5),),
      SizedBox(width: 10),
    Container(
      height: 50,
      width: 150,
      child: Image.asset('images/socials.png'),)

    ],
  ),
)

            ],
          ),
        ),
      ),
    );



    
  }


  void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // Return the AlertDialog widget (explained below)
      return AlertDialog(
        title: Text('Choose an Option'),
        // content: Column(
        //   children: [
        //     Text('Dialog content'),
        //   ],
        // ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); 
             Navigator.pushNamed(context, '/devwebsignup');
            },
            child: Text('Developer'),
          ),
          ElevatedButton(
            onPressed: () {
                Navigator.pop(context); 
             Navigator.pushNamed(context, '/orgsignup');
            },
            child: Text('Organization/CTO'),
          ),
        ],
      );
    },
  );
}

}
