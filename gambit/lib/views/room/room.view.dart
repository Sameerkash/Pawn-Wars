import 'package:flutter/material.dart';
import 'package:gambit/widgets/text.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomView extends HookConsumerWidget {
  const RoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 1,
              child: InkWell(
                onTap: () {
                  context.go('/home/room/create');
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.purple[200],
                  child: const DisplayText(
                    text: 'CREATE',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 1,
              child: InkWell(
                onTap: () {
                  context.go('/home/room/join');
                },
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: const DisplayText(
                    text: 'JOIN',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
