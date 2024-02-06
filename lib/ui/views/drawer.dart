import 'package:flutter/material.dart';
import 'package:steam_app/ui/views/chat.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/friends.dart';
import 'package:steam_app/ui/views/library.dart';
import 'package:steam_app/ui/views/settings.dart';
import 'package:steam_app/ui/views/store.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: drawerColor,
      width: 90,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "STEAM",
                    style: TextStyle(color: Colors.white70, fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: drawerColor,
            ),
          ),
          InkWell(
            splashColor: Colors.blue, // Tıklama efekti için renk belirleme
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 10.0),
                leading: Icon(Icons.home, size: 30.0, color: Colors.grey,),
              ),
            ),
          ),

          InkWell(
            splashColor: Colors.blue,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Library()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 10.0),
                leading: Icon(Icons.library_books, size: 30.0, color: Colors.grey,),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.blue,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Store()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 10.0),
                leading: Icon(Icons.shopping_cart, size: 30.0, color: Colors.grey,),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.blue,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Chat()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 10.0),
                leading: Icon(Icons.chat, size: 30.0, color: Colors.grey,),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.blue,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Friends()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 10.0),
                leading: Icon(Icons.group, size: 30.0, color: Colors.grey,),
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.blue,
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 10.0),
                leading: Icon(Icons.settings, size: 30.0, color: Colors.grey,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
