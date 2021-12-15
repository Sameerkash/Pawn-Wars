import 'package:flutter/material.dart';
import 'package:gambit/widgets/text.dart';

void showSnackBar(BuildContext context, {String? message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: DisplayText(
        text: message ?? 'Something went wrong',
        fontSize: 11,
      ),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.black,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
