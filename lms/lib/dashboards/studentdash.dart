import 'package:flutter/material.dart';
import 'package:lms/auth/loginstudent.dart';

import '../main.dart';

class StudentDash extends StatefulWidget {
  final name;
  final email;
  const StudentDash({super.key,this.name = "Guest", this.email = ""});

  @override
  State<StudentDash> createState() => _StudentDashState();
}

class _StudentDashState extends State<StudentDash> {
  @override
  
  Widget build(BuildContext context) {
    Widget menuDrawer() {
      return Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              )),
              accountName: Text(widget.name),
              accountEmail: Text(widget.email),
            ),
            ListTile(
              onTap: () {
                debugPrint("Home");
              },
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.green),
              ),
            ),
            
            
            widget.name == "Guest"
                ? ListTile(
                    onTap: () {
                      debugPrint("login");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginStudent(),
                        ),
                      );
                    },
                    leading: Icon(Icons.lock),
                    title: Text(
                      'Login',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                : ListTile(
                    onTap: () {
                      debugPrint("Logout");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ),
                      );
                    },
                    leading: Icon(Icons.lock_open),
                    title: Text(
                      'Log out',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Student DashBoard'),
        
      ),
      drawer: menuDrawer(),
    );
  }
}