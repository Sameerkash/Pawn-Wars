import 'package:flutter/material.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';

class MarketPlaceView extends StatelessWidget {
  MarketPlaceView({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/pink_board.png',
    'assets/blue.png',
    'assets/game_bg.jpeg',
    'assets/chess_art.jpeg',
    'assets/chess_art_2.jpeg',
  ];

  final List<String> title = [
    'Pink Skin',
    'Blue Skin',
    'Game Background',
    'Artsy',
    'Impertial',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayText(
          text: 'Gambit Marketplace',
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (contxt, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      DisplayText(
                        text: title[index],
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedDisplayButton(
                text: 'Buy',
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
