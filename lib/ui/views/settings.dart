import 'package:flutter/material.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/drawer.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTwo,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: colorTwo,
        title: Text("Settings",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      drawer: MyDrawer(),
    );
  }
}
