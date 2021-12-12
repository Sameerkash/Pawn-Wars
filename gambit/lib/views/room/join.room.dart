import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gambit/views/room/join.room.vm.dart';
import 'package:gambit/views/room/widgets/player_display_tile.dart';
import 'package:gambit/views/room/widgets/stake_bottom_sheet.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class JoinRoomView extends HookConsumerWidget {
  const JoinRoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = useTextEditingController();
    var stakeController = useTextEditingController();
    var joinRoom = ref.watch(joinRoomProvider);

    if (joinRoom is GameInitialzied) {
      context.go('/home/room/game', extra: joinRoom.room);
    }

    return Scaffold(
      backgroundColor: Colors.purple[200],
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 40),
                    const DisplayText(
                      text: 'Stake, Play and win Big!',
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 30),
                    const SizedBox(height: 20),
                    const DisplayText(
                      text: 'Enter a room code to get started',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    const SizedBox(height: 60),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          controller: controller,
                          onChanged: (val) {
                            ref.read(joinRoomProvider.notifier).setCode(val);
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: 'code',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            fillColor: Colors.black,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    joinRoom.maybeMap(
                      orElse: () => const SizedBox(),
                      joined: (data) => Column(
                        children: [
                          ...data.room.players.map(
                            (p) => PlayerDisplayTile(
                              player: p,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const DisplayText(
                            text: 'Waiting to start the game',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: joinRoom.maybeMap(
                    orElse: () => const SizedBox(),
                    inital: (data) => ElevatedDisplayButton(
                      text: 'STAKE',
                      disabled: data.code == null || data.code!.isEmpty,
                      onPressed: () async {
                        await StakeBottomSheet.show(context, stakeController);
                        ref
                            .read(joinRoomProvider.notifier)
                            .setStake(double.parse(stakeController.text));

                        ref.read(joinRoomProvider.notifier).joinRoom();
                      },
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
