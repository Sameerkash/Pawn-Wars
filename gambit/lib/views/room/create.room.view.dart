import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/playerOptions.dart';
import 'package:gambit/views/room/create.room.vm.dart';
import 'package:gambit/views/room/widgets/display.code.dart';
import 'package:gambit/views/room/widgets/player_display_tile.dart';
import 'package:gambit/views/room/widgets/stake_bottom_sheet.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateRoomView extends HookConsumerWidget {
  const CreateRoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final room = ref.watch(roomProvider);

    if (room is GameInitialzied) {
      context.go('/home/room/game', extra: room.room);
    }

    var stake = useTextEditingController();

    return Scaffold(
      backgroundColor: Colors.purple[200]!.withOpacity(0.8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: room.maybeMap(
                  joined: (data) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const DisplayText(
                              text: 'Let your friends know!',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                            const SizedBox(height: 60),
                            DisplayCode(code: data.room.code),
                            const SizedBox(height: 20),
                            ...data.players.map(
                              (p) => PlayerDisplayTile(
                                player: p,
                              ),
                            ),
                            const SizedBox(height: 10),
                            if (data.players.length != 2)
                              const Align(
                                alignment: Alignment.center,
                                child: DisplayText(
                                  text: 'Waiting for a player to join...',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                  orElse: () => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const RoomHeader(),
                      room.maybeMap(
                        orElse: () => const SizedBox(),
                        inital: (data) => RoomPawnOptions(
                          onCardClick: (pawn) {
                            ref.read(roomProvider.notifier).setPawnColor(pawn);
                          },
                          selectedPawn: data.pawn,
                        ),
                        created: (data) => Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            RoomPawnOptions(
                              onCardClick: (pawn) {},
                              selectedPawn: data.pawn,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: DisplayText(
                                text: 'Invite a friend to join!',
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 10,
                              ),
                              child: DisplayCode(
                                code: data.room.code,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: room.maybeMap(
                  orElse: () => const SizedBox(),
                  inital: (data) => ElevatedDisplayButton(
                    text: 'CREATE ROOM',
                    disabled: data.pawn == null,
                    onPressed: () {
                      ref.read(roomProvider.notifier).generateRoom();
                    },
                  ),
                  created: (data) => ElevatedDisplayButton(
                    text: 'STAKE',
                    disabled: data.pawn == null,
                    onPressed: () async {
                      await StakeBottomSheet.show(context, stake);

                      ref.read(roomProvider.notifier).joinRoom(
                            double.parse(stake.text),
                          );
                    },
                  ),
                  joined: (data) => ElevatedDisplayButton(
                    text: 'START',
                    onPressed: () {
                      ref.read(roomProvider.notifier).initalizeGame();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoomPawnOptions extends StatelessWidget {
  final void Function(PlayerPawn) onCardClick;
  final PlayerPawn? selectedPawn;

  const RoomPawnOptions({
    Key? key,
    required this.onCardClick,
    this.selectedPawn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: DisplayText(
            text: 'CHOOSE A SIDE',
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            ...pawnOptions
                .map(
                  (pawn) => Expanded(
                    child: GestureDetector(
                      onTap: () {
                        onCardClick(pawn.pawn);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                        height: pawn.pawn == selectedPawn ? 320 : 260,
                        child: Card(
                          shadowColor: Colors.grey,
                          elevation: pawn.pawn == selectedPawn ? 3 : 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: pawn.color,
                          child: Image.asset(
                            pawn.image,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ],
    );
  }
}

class RoomHeader extends StatelessWidget {
  const RoomHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: const [
          DisplayText(
            text: 'Stake, Play and win Big!',
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 10),
          DisplayText(
            text: 'Bet against your friends and win',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 30),
          DisplayText(
            text: 'Create a room to get started',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
      // ),
    );
  }
}
