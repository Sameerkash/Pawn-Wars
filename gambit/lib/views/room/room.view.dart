import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/models/playerOptions.dart';
import 'package:gambit/views/room/room.vm.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomView extends HookConsumerWidget {
  const RoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final room = ref.watch(roomProvider);
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
                            vertical: 15.0, horizontal: 20.0),
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
                            DisplayCode(code: data.room.id),
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
                                code: data.room.id,
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
                            int.parse(stake.text),
                          );
                    },
                  ),
                  joined: (data) => ElevatedDisplayButton(
                    text: 'START',
                    onPressed: () {},
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

class PlayerDisplayTile extends StatelessWidget {
  final Player player;
  const PlayerDisplayTile({
    Key? key,
    required this.player,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: player.pawn == PlayerPawn.white ? Colors.white : Colors.black,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://i.pravatar.cc/300',
          ),
        ),
        title: DisplayText(
          text: player.nickName!,
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: player.pawn == PlayerPawn.white ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}

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
        IconButton(
          icon: const Icon(
            Icons.ios_share,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

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
    return
        // Card(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(12.0),
        //   ),
        //   color: Colors.black,
        // child:
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: const [
          DisplayText(
            text: 'Stake, Play and win Big!',
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
          SizedBox(height: 5),
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
