import 'package:flutter/material.dart';

import 'enums/enums.dart';

class PawnOption {
  final String image;
  final Color color;
  final PlayerPawn pawn;

  PawnOption({
    required this.image,
    required this.color,
    required this.pawn,
  });
}

List<PawnOption> pawnOptions = [
  PawnOption(
    image: 'assets/black_queen.png',
    color: Colors.white,
    pawn: PlayerPawn.black,
  ),
  PawnOption(
    image: 'assets/white_king.png',
    color: Colors.black,
    pawn: PlayerPawn.white,
  ),
];
