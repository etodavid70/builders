  import 'package:http/http.dart' as http;
  import 'dart:convert';
  import 'package:cookie_jar/cookie_jar.dart';

  main() async{
//     String token = 'vekANtVx7HTdhgqS0oWcYENz6Pn1yoUN';
//     var url = Uri.parse('http://127.0.0.1:8000/cbt2/rawapijson/1/'); 
 

//     var response = await http.get(url,
//         headers: {'Content-Type': 'application/json',
//         // 'Authorization': ' Token $token'
//         });

// // print(response.body);
// print(response.statusCode);
signup('samkelf2021@gmail.com', "davdydxemc2");

  }

  



Future<void> signup(
  String email, 
String password) async {
  var url = Uri.parse('http://127.0.0.1:8000/signup/'); 
 
    final response = await http.post(
      url,
        headers: <String, String>{
            'Content-Type': 'application/json',
            //  'Authorization': ' Token $'
            // charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
            'email': email,
            'password': password,
            'first_name': 'eto',
            'last_name': 'david'
        }),
    );

    if (response.statusCode == 201) {
        // Signup successful
        print('Signup successful');
    } else {
        // Signup failed
        print(response.body);
    }
}
