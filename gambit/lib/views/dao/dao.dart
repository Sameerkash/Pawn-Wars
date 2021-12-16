import 'package:flutter/material.dart';
import 'package:gambit/widgets/text.dart';

class DAO extends StatelessWidget {
  const DAO({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayText(
          text: 'Gambit DAO',
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        backgroundColor: Colors.purple[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: DisplayText(
                text:
                    'The ultimate community DAO coming soon!, make sure to HODL \$GAMBIT',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Image.asset(
              'assets/rook.png',
              height: 300,
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
