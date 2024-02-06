import 'package:flutter/material.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/drawer.dart';
import 'package:steam_app/data//entity/friends.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTwo,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: colorTwo,
        title: Text("Friends",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      drawer: MyDrawer(),
    );
  }
}
