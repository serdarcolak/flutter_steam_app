import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steam_app/data/entity/games.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/drawer.dart';
import 'package:steam_app/ui/views/get_library.dart';
import 'package:steam_app/ui/views/home.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  bool searchCnt = false;

  Future<void> search(String searchWord) async {
    print("Search : $searchWord");
  }

  Future<List<Games>> gamesLoad() async {
    var gamesList = <Games>[];
    var g1 = Games(
        id: 1,
        gameName: "Call Of Duty",
        image: "call_of_duty.png",
        definition:
        "Defition",
        price: 100);
    var g2 = Games(
        id: 2,
        gameName: "Cyberpunk 2077",
        image: "cyberpunk.png",
        definition:
        "Defition",
        price: 50);
    var g3 = Games(
        id: 3,
        gameName: "FC 2024",
        image: "fifa.png",
        definition: "definition",
        price: 150);
    var g4 = Games(
        id: 4,
        gameName: "Football Manager 2024",
        image: "ft_manager_2024.png",
        definition: "definition",
        price: 30);
    var g5 = Games(
        id: 5,
        gameName: "GTA V",
        image: "gta5.png",
        definition: "definition",
        price: 40);
    var g6 = Games(
        id: 6,
        gameName: "Mortal Kombat X",
        image: "mortal_kombat.png",
        definition: "definition",
        price: 20);
    var g7 = Games(
        id: 7,
        gameName: "The Witcher",
        image: "witcher.png",
        definition: "definition",
        price: 10);

    gamesList.add(g1);
    gamesList.add(g2);
    gamesList.add(g3);
    gamesList.add(g4);
    gamesList.add(g5);
    gamesList.add(g6);
    gamesList.add(g7);

    return gamesList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTwo,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: colorTwo,
        title: searchCnt
            ? TextField(
                decoration: const InputDecoration(hintText: "Search",hintStyle: TextStyle(color: Colors.white70)),
                style: TextStyle(color: Colors.white),
                onChanged: (searchResult) {
                  search(searchResult);
                },
              )
            : Text(
                "Library",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
        actions: [
          searchCnt
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      searchCnt = false;
                    });
                  },
                  icon: const Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      searchCnt = true;
                    });
                  },
                  icon: const Icon(Icons.search)),
        ],
      ),
      drawer: MyDrawer(),
      body: FutureBuilder<List<Games>>(
        future: gamesLoad(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var gamesList = snapshot.data;
            return ListView.builder(
              itemCount: gamesList!.length,
              itemBuilder: (context, index) {
                var game = gamesList?[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GetLibrary(game: game)));
                  },
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Card(
                      margin: EdgeInsets.only(bottom: 50),
                      color: Colors.black12,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            left: 15,
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Image.asset("images/${game?.image}"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 215),
                            child: Container(
                              width: 250, // Adjust the width as needed
                              height: 250,
                              color: Colors.blue, // Blue color covering the entire card
                            ),
                          ),
                          Positioned(
                            right: 0, // Align to the right
                            child: Container(
                              width: 100,
                              height: 100,
                              color: Colors.blue, // Make this container transparent
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Center(
                                    child: Text(
                                      game!.gameName,
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 10),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // Your onPressed logic here
                                    },
                                    icon: Icon(Icons.play_circle_outline_rounded, size: 30, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
