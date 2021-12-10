import 'package:flutter/material.dart';

class ElevatedDisplayButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final VoidCallback onPressed;
  final bool disabled;
  final Color color;
  final Color textColor;

  const ElevatedDisplayButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16,
    this.disabled = false,
    this.color = Colors.black,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: disabled ? Colors.grey : color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(double.infinity, 50)),
        child: Text(
          text,
          style: TextStyle(
            color: disabled ? Colors.black54 : textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
