import 'package:flutter/material.dart';
import 'package:lms/auth/loginmanagement.dart';
import 'package:lms/studentcrud/studentcrud.dart';

import '../main.dart';

class userManagementDash extends StatefulWidget {
  final name;
  final email;
  const userManagementDash({super.key, this.name, this.email});

  @override
  State<userManagementDash> createState() => _userManagementDashState();
}

class _userManagementDashState extends State<userManagementDash> {
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
             ListTile(
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyWidget(),
                        ),
                      );
              },
              leading: Icon(Icons.child_care),
              title: Text(
                'Student Crud',
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
                          builder: (context) => LoginManagement(),
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
          title: Text('Management DashBoard (Admin)'),
        ),
        drawer: menuDrawer(),
      );
    }
  }

