import 'package:flutter/material.dart';
import 'package:steam_app/data/entity/games.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/drawer.dart';
import 'package:steam_app/ui/views/home.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  Future<List<Games>> gamesLoad() async {
    var gamesList = <Games>[];
    var g1 = Games(
        id: 1,
        gameName: "Call Of Duty",
        image: "call_of_duty.png",
        definition: "Defition",
        price: 100);
    var g2 = Games(
        id: 2,
        gameName: "Cyberpunk 2077",
        image: "cyberpunk.png",
        definition: "Defition",
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
        title: Text(
          "Store",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: MyDrawer(),
      body: FutureBuilder<List<Games>>(
        future: gamesLoad(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var gamesList = snapshot.data;
            return GridView.builder(
              itemCount: gamesList!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.5),
              itemBuilder: (context, index) {
                var game = gamesList?[index];
                return GestureDetector(
                  onTap: () {},
                    child: Card(
                      color: colorThree,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("images/${game?.image}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("${game?.price} ₺",style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.white),),
                              ElevatedButton(onPressed: (){
                                
                              }, child: const Text("Satın Al",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),))
                            ],
                          ),
                        ],
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
