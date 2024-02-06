import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:steam_app/data/entity/games.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/drawer.dart';
import 'package:steam_app/ui/views/game.dart';
import 'package:steam_app/ui/views/library.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            "Call of Duty captivates with its compelling story, stunning graphics, and thrilling multiplayer experience. "
            "Gamers express admiration for its successful formula, experiencing adrenaline-fueled moments in this action-packed world.",
        price: 100);
    var g2 = Games(
        id: 2,
        gameName: "Cyberpunk 2077",
        image: "cyberpunk.png",
        definition:
            "Cyberpunk game impresses players with its unique dystopian atmosphere, "
            "stunning graphics, and compelling storyline. Navigating through intricate cityscapes, "
            "players experience a captivating virtual reality, solidifying their admiration for the game.",
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
                decoration: const InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white70)),
                style: TextStyle(color: Colors.white),
                onChanged: (searchResult) {
                  search(searchResult);
                },
              )
            : Text(
                "Home",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Library()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  color: colorThree,
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align text to the top
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "images/call_of_duty.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Call Of Duty",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Call of Duty captivates with its compelling story, stunning graphics, and thrilling multiplayer experience. "
                                "Gamers express admiration for its successful formula, experiencing adrenaline-fueled moments in this action-packed world.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Library()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  color: colorThree,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "images/cyberpunk.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CyberPunk 2077",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Cyberpunk game impresses players with its unique dystopian atmosphere, "
                                "stunning graphics, and compelling storyline. Navigating through intricate cityscapes, "
                                "players experience a captivating virtual reality, solidifying their admiration for the game.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              color: colorThree,
              width: 500,
              height: 500,
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Image.asset("images/profil1.png")),
                    title: Text(
                      'serdarcolak',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'Text',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.favorite_rounded),
                  ),
                  SizedBox(height: 50),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset("images/profil2.png")),
                    title: Text(
                      'serdarcolak2',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'Text',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.favorite_rounded),
                  ),
                  SizedBox(height: 50),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset("images/profil3.png")),
                    title: Text(
                      'serdarcolak3',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'Text',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.favorite_rounded),
                  ),
                  SizedBox(height: 50),
                  ListTile(
                    leading: CircleAvatar(child: Image.asset("images/profil4.png")),
                    title: Text(
                      'serdarcolak4',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      'Text',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                    ),
                    trailing: Icon(Icons.favorite_rounded),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
