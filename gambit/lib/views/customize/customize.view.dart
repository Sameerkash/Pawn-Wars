import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gambit/views/customize/customize.vm.dart';
import 'package:gambit/widgets/text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:squares/squares.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../utils/functions.dart';

class CustomizeView extends HookConsumerWidget {
  const CustomizeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customize = ref.watch(customizeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const DisplayText(
          text: 'Customize',
          fontSize: 16,
        ),
        backgroundColor: Colors.purple[400],
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {
              ref.read(customizeProvider.notifier).savePreferences();
            },
          ),
        ],
      ),
      body: customize.map(
        error: (_) => Container(),
        loading: (_) => const Center(
          child: SpinKitChasingDots(
            color: Colors.purple,
            size: 50.0,
          ),
        ),
        loaded: (data) {
          if (data.items.isEmpty) {
            return const Center(
              child: Text(
                'Oops! No NFTs to customize',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            );
          }
          return Container(
            color: HexColor.fromHex(data.bgColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      BoardController(
                        state: BoardState.empty(),
                        pieceSet: PieceSet.merida(),
                        theme: data.boardTheme,
                        size: BoardSize.standard(),
                        moves: const [],
                        canMove: false,
                        draggable: true,
                      ),
                      const SizedBox(height: 40),
                      const DisplayText(
                        text: 'Choose a Style',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 200,
                        child: PageView(
                          children: data.items
                              .map(
                                (e) => GestureDetector(
                                  onTap: () {
                                    ref
                                        .read(customizeProvider.notifier)
                                        .setNftPreference(
                                            nftType: e.nftData.nftType);
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          placeholder: (_, __) =>
                                              SpinKitFadingCircle(
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: index.isEven
                                                      ? Colors.purple[300]
                                                      : Colors.white,
                                                ),
                                              );
                                            },
                                          ),
                                          imageUrl: e.nftData.imageUrl,
                                        ),
                                        const Align(
                                          alignment: Alignment.bottomCenter,
                                          child: DisplayText(
                                            text: 'Choose a Style',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
