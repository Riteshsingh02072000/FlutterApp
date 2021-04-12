import 'dart:html';

import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('This is our Header'),

            ),
            ListTile(
              title: Text('Profile'),
            ),
            ListTile(
              title: Text('Settings'),
            ),
            ListTile(
            title: Text('Log Out'),
            ),

          ],
        ),
      ),
    );
  }
}

