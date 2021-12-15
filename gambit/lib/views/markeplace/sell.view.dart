import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gambit/models/marketplace/marketplace.dart';
import 'package:gambit/views/markeplace/sell.vm.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyNfts extends HookConsumerWidget {
  const MyNfts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myItems = ref.watch(sellProvider);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const DisplayText(
            text: 'My NFTS',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          backgroundColor: Colors.purple,
          bottom: const TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 3,
            tabs: [
              Tab(
                child: DisplayText(
                  text: 'BOUGHT',
                ),
              ),
              Tab(
                child: DisplayText(
                  text: 'MINTED',
                ),
              ),
            ],
          ),
        ),
        body: myItems.map(
          error: (error) => Container(),
          loading: (_) => const SpinKitChasingDots(
            color: Colors.purple,
            size: 70.0,
          ),
          data: (data) => TabBarView(
            children: [
              ItemView(
                items: data.ownedItems,
                buttonText: 'SELL',
              ),
              ItemView(
                items: data.createdItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  final List<MarkeplaceItem> items;
  final String? buttonText;
  const ItemView({
    Key? key,
    required this.items,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (contxt, index) {
        return ItemWidget(
          buttonText: buttonText == null
              ? items[index].sold
                  ? 'SOLD'
                  : 'NOT SOLD'
              : buttonText!,
          item: items[index],
        );
      },
      itemCount: items.length,
    );
  }
}

class ItemWidget extends StatelessWidget {
  final MarkeplaceItem item;
  final String buttonText;
  const ItemWidget({
    Key? key,
    required this.item,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: item.itemId,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: CachedNetworkImage(
                  fit: BoxFit.fitHeight,
                  placeholder: (_, __) => SpinKitFadingCircle(
                      itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.purple[300] : Colors.white,
                      ),
                    );
                  }),
                  imageUrl: item.nftData.imageUrl,
                ),
              ),
              const SizedBox(height: 10),
              DisplayText(
                text: item.nftData.title,
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 5),
              DisplayText(
                text: buttonText,
                color: Colors.purple[300]!,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
