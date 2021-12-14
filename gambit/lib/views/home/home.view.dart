import 'package:flutter/material.dart';
import 'package:gambit/models/player/player.dart';
import 'package:gambit/views/auth/auth.vm.dart';
import 'package:gambit/widgets/text.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:go_router/go_router.dart';
import 'package:web3dart/web3dart.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<CardItem> items = [
    HorizontalCardItem(text: 'Practice'),
    HorizontalCardItem(
      text: '1 vs 1',
    ),
    HorizontalCardItem(
      text: 'Markeplace',
    ),
    HorizontalCardItem(
      text: 'Account',
    ),
  ];

  int index = 0;

  List<Widget> bg = [
    const BgImageText(
      image: 'assets/king_queen_slant.png',
      text: 'Gambit',
      title: 'Play against friends',
      subTitle: 'Win \$GAMBIT',
      caption: 'In an ultimate Chess match',
    ),
    const BgImageText(
      image: 'assets/gambit.png',
      text: 'Gambit',
      title: 'Trade for awesome NFTs!',
      subTitle: 'Explore the marketplace',
      caption: 'awesome game items',
    ),
    const BgImageText(
      image: 'assets/rook.png',
      text: 'Gambit',
      title: 'All your data!',
      subTitle: 'Your crednetials never',
      caption: 'leave your device',
    ),
  ];

  List<Color> bgColors = [
    Colors.purple[100]!,
    Colors.purple[200]!,
    Colors.purple[300]!,
    Colors.purple[400]!,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final auth = ref.watch(authProvider);
      final balance = auth.maybeWhen(
          orElse: () => '', authenticated: (a) => a.balance) as EtherAmount;

      return Scaffold(
        backgroundColor: bgColors[index],
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    DisplayText(
                      text:
                          '\$MATIC ${balance.getInEther}.${balance.getInWei.toString().substring(1, 3)}',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(width: 16),
                    const CircleAvatar(),
                  ]),
                ),
              ),
              if (index == 2) bg[1],
              if (index == 3) bg[2],
              if (index != 2 && index != 3) bg[0],
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: HorizontalCardPager(
                    onPageChanged: (page) {
                      setState(() {
                        index = page.toInt();
                      });
                    },
                    onSelectedItem: (page) {
                      setState(() {
                        index = page;
                      });
                      if (page == 2) {
                        context.go('/home/market');
                      } else if (page == 3) {
                        context.go('/home/account');
                      } else {
                        context.go('/home/room');
                      }
                    },
                    items: items,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

class BgImageText extends StatelessWidget {
  final String text;
  final String image;
  final String title;
  final String subTitle;
  final String caption;

  const BgImageText({
    Key? key,
    required this.text,
    required this.image,
    required this.title,
    required this.subTitle,
    this.caption = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: Image.asset(
              image,
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DisplayText(
                  text: title,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                DisplayText(
                  text: subTitle,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                DisplayText(
                  text: caption,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalCardItem extends CardItem {
  final String text;
  final Color color;

  HorizontalCardItem({
    required this.text,
    this.color = Colors.purple,
  });

  @override
  Widget? buildWidget(double diffPosition) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 250,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: FittedBox(
          child: DisplayText(
            text: text,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
