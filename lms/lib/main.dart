import 'package:flutter/material.dart';
import 'package:lms/auth/loginmanagement.dart';
import 'package:lms/auth/loginstudent.dart';
import 'package:lms/auth/logintutor.dart';
import 'package:lms/auth/signupmanagement.dart';
import 'package:lms/auth/signupstudent.dart';
import 'package:lms/auth/signuptutor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          title: Text('Learning Management System', style: TextStyle(color: Colors.black),),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 1,
         
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
             Image(image: AssetImage('images/school.jpg')),
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Student Area'),
                  subtitle: Text(
                    'Student Operations',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'learning Provide Great Asset For Life',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginStudent(),
                        ),
                      );
                      },
                      child: const Text('Login'),
                    ),
                    MaterialButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpStudent(),
                        ),
                      );
                      },
                      child: const Text('Sign Up'),
                    ),
                  ],
                ),
              
              ],
            ),
          ),
       
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [

                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Management Area'),
                  subtitle: Text(
                    'Tutor and Admin Operations',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Maintaince Purspose',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginManagement(),
                        ),
                      );
                      },
                      child: const Text('Login'),
                    ),
                    // MaterialButton(
                    //   textColor: const Color(0xFF6200EE),
                    //   onPressed: () {
                    //     //for Security Reasons
                    //   //   Navigator.push(
                    //   //   context,
                    //   //   MaterialPageRoute(
                    //   //     builder: (context) => SignupManagement(),
                    //   //   ),
                    //   // );
                    //   },
                    //   child: const Text('Sign Up'),
                    // ),
                  ],
                ),
              
              ],
            ),
          ),

          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
            
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Tutor Area'),
                  subtitle: Text(
                    'Student Operations',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'learning Provide Great Asset For Life',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginTutor(),
                        ),
                      );
                      },
                      child: const Text('Login'),
                    ),
                    // MaterialButton(
                    //   textColor: const Color(0xFF6200EE),
                    //   onPressed: () {
                    //    Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => TutorSignup(),
                    //     ),
                    //   );
                    //   },
                    //   child: const Text('Sign Up'),
                    // ),
                  ],
                ),
              
              ],
            ),
          ),
              ],
            )
          ],
        ),
    );
  }
}