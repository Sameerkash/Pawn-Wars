import 'package:flutter/material.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple[200]!,
            Colors.purple[300]!,
            Colors.purple[400]!,
            Colors.purple[500]!,
            Colors.purple[600]!,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pawn Wars',
              style: GoogleFonts.pressStart2p(
                fontSize: 36,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'The ultimate On Chain Chess game',
              style: GoogleFonts.orbitron(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 60),
            Image.asset(
              'assets/logo.png',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 60),
            Container(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedDisplayButton(
                onPressed: () {
                  context.go('/auth-info');
                },
                text: 'GET STARTED',
                textColor: Colors.black,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              'By continuing you agree to the T&C of Pawn Wars Official',
              style: GoogleFonts.orbitron(
                fontSize: 10,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
