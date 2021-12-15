import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gambit/models/marketplace/marketplace.dart';
import 'package:gambit/views/markeplace/markeplace.vm.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MarketPlaceView extends HookConsumerWidget {
  const MarketPlaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marketplace = ref.watch(marketPlaceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const DisplayText(
          text: 'Gambit Marketplace',
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          marketplace.map(
              error: (error) => Container(),
              loading: (_) => const SpinKitChasingDots(
                    color: Colors.purple,
                    size: 70.0,
                  ),
              data: (data) {
                if (data.items.isEmpty) {
                  return const Center(
                    child: DisplayText(text: 'Oops! no items found'),
                  );
                }
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (contxt, index) {
                    return GestureDetector(
                      onTap: () {
                        context.go(
                          '/home/market/nft-view',
                          extra: data.items[index],
                        );
                      },
                      child: Hero(
                        tag: data.items[index].itemId,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fitHeight,
                                    placeholder: (_, __) => SpinKitFadingCircle(
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                      return DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: index.isEven
                                              ? Colors.purple[300]
                                              : Colors.white,
                                        ),
                                      );
                                    }),
                                    imageUrl:
                                        data.items[index].nftData.imageUrl,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                DisplayText(
                                  text: data.items[index].nftData.title,
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: data.items.length,
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ElevatedDisplayButton(
                      text: 'MINT',
                      onPressed: () {
                        context.go('/home/market/mint');
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ElevatedDisplayButton(
                      text: 'SELL',
                      onPressed: () {
                        context.go('/home/market/sell');
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NftDetailView extends HookConsumerWidget {
  final MarkeplaceItem item;
  const NftDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: Colors.purple[400],
                  leading: const SizedBox.shrink(),
                  expandedHeight: 500,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Container(
                      width: double.infinity,
                      color: Colors.purple[400],
                      height: 30,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DisplayText(
                          text: item.nftData.title,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    background: Hero(
                      tag: item.itemId,
                      child: CachedNetworkImage(
                        imageUrl: item.nftData.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ];
            },
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DisplayText(
                    text: '\$MATIC ${item.price}',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 20),
                  DisplayText(
                    text: item.nftData.description,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedDisplayButton(
                color: Colors.white,
                text: 'BUY',
                textColor: Colors.black,
                onPressed: () {
                  showBuyNowBottomSheet(context, item, () {
                    ref
                        .read(marketPlaceProvider.notifier)
                        .buyNft(itemId: item.itemId, price: item.price);

                    Navigator.pop(context);
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

showBuyNowBottomSheet(
    BuildContext context, MarkeplaceItem item, VoidCallback onPressed) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
    ),
    backgroundColor: Colors.black,
    builder: (_) {
      return Card(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const DisplayText(
                text: 'ARE YOU SURE ?',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 50),
              DisplayText(
                text: '\$MATIC ${item.price}',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 20),
              DisplayText(
                text: item.nftData.title,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 20),
              ElevatedDisplayButton(
                color: Colors.white,
                text: 'CONFIRM BUY',
                textColor: Colors.black,
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      );
    },
  );
}
