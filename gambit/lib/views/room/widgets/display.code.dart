import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gambit/widgets/text.dart';

class DisplayCode extends StatelessWidget {
  final String code;
  const DisplayCode({
    Key? key,
    required this.code,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DisplayText(
          text: code,
          color: Colors.white,
          fontSize: 12,
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.copy,
            color: Colors.white,
          ),
          onPressed: () {
            Clipboard.setData(
              ClipboardData(text: code),
            );
            print(code);

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('Code copied to clipboard!'),
                duration: const Duration(seconds: 2),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
        ),
        // IconButton(
        //   icon: const Icon(
        //     Icons.ios_share,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {},
        // ),
      ],
    );
  }
}
