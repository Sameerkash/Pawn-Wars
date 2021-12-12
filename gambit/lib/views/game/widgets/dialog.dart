import 'package:flutter/material.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';

class WinnerDialog {
  static Future<T?> show<T>(
      BuildContext context, VoidCallback onClick, String? winner) {
    return showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.purpleAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        insetPadding: const EdgeInsets.all(25),
        child: SizedBox(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const DisplayText(
                text: 'Check Mate!',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 40),
              if (winner != null) ...[
                Image.asset(
                  'assets/bishop.png',
                  width: 120,
                  height: 200,
                ),
                const SizedBox(height: 10),
                const DisplayText(
                  text: 'You Won!',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ElevatedDisplayButton(
                    text: 'Claim Stake',
                    onPressed: onClick,
                  ),
                )
              ] else ...[
                Image.asset(
                  'assets/pawn.png',
                  width: 120,
                  height: 200,
                ),
                const SizedBox(height: 10),
                const DisplayText(
                  text: 'You Lost!',
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ElevatedDisplayButton(
                    text: 'Go Back home',
                    onPressed: onClick,
                  ),
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}
