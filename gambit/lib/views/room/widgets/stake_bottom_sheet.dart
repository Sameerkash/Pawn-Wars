import 'package:flutter/material.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';

class StakeBottomSheet {
  static Future<T?> show<T>(
      BuildContext context, TextEditingController controller) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const DisplayText(
              text: 'Choose an amount to stake in \$MATIC',
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: SizedBox(
                width: 100,
                child: TextField(
                  controller: controller,
                  style: const TextStyle(fontSize: 60, color: Colors.white),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  cursorHeight: 40,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                    hintText: '0',
                    hintStyle: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedDisplayButton(
              text: 'SEND',
              color: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
