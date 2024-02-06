import 'package:flutter/material.dart';
import 'package:steam_app/data/entity/games.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/drawer.dart';
import 'package:steam_app/ui/views/library.dart';

class GetLibrary extends StatefulWidget {
  Games game;

  GetLibrary({required this.game});

  @override
  State<GetLibrary> createState() => _GetLibraryState();
}

class _GetLibraryState extends State<GetLibrary> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTwo,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: colorTwo,
        title: Text("Library",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Hero(
          tag: 'Library',
          child: Material(
            child: ListTile(
              title: Text("${widget.game.gameName}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),),
              subtitle: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(45.0),
                    child: Icon(Icons.videogame_asset_rounded,size: 30,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(45.0),
                    child: Icon(Icons.rocket_launch,size: 30,color: Colors.white,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(45.0),
                    child: Icon(Icons.favorite,size: 30,color: Colors.white,),
                  ),


                ],
              ),
              tileColor: Colors.blue,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
