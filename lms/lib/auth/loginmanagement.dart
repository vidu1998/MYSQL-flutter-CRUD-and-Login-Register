import 'package:flutter/material.dart';
import 'package:lms/auth/signupmanagement.dart';
import 'package:lms/dashboards/userManagementDash.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginManagement extends StatefulWidget {
  const LoginManagement({super.key});

  @override
  State<LoginManagement> createState() => _LoginManagementState();
}

class _LoginManagementState extends State<LoginManagement> {
   TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

Future login() async {
    var url = "http://192.168.1.158/lmsserver/auth/umanagementlogin.php";
    var response = await http.post(Uri.parse(url),
        body: {"email": email.text, "password": pass.text});

    if (response.statusCode == 200) {
      var userData = json.decode(response.body);

      if (userData == "ERROR") {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Message"),
            content: Text("Username and password did not match"),
            actions: [
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              )
            ],
          ),
        );
      } else {
       
         Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => userManagementDash(name: userData["name"],email:userData["email"]),
            ),
          );

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Message"),
            content: Text("Login Sucessfull"),
            actions: [
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              )
            ],
          ),
        );
        print(userData);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Stack(
          children: [
            Container(
              color: Colors.grey[100],
            ),
            Positioned(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Login Here',
                  style: TextStyle(fontFamily: 'Bebas', fontSize: 30),
                ),
              ),
            ),
            Positioned(
              top: 190,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 260,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Colors.pink,
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        login();
                      },
                    )),
              ),
            ),
            Positioned(
              top: 420,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Or Sign Up",
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 440,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    child: Text(
                      "Click Me for Sign Up",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onPressed: () {
                      debugPrint("signup check");
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignupManagement()),
                      // );
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}