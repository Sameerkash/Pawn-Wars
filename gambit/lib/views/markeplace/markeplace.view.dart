import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:gambit/views/markeplace/markeplace.vm.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class MarketPlaceView extends HookConsumerWidget {
  MarketPlaceView({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/pink_board.png',
    'assets/blue.png',
    'assets/game_bg.jpeg',
    'assets/chess_art.jpeg',
    'assets/chess_art_2.jpeg',
  ];

  final List<String> title = [
    'Pink Skin',
    'Blue Skin',
    'Game Background',
    'Artsy',
    'Impertial',
  ];

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
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.go('/home/market/mint');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (contxt, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      marketplace.maybeMap(
                        orElse: () => const SizedBox(),
                      ),
                      Expanded(
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      DisplayText(
                        text: title[index],
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedDisplayButton(
                text: 'Buy',
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MintNFT extends StatefulHookWidget {
  const MintNFT({Key? key}) : super(key: key);

  @override
  State<MintNFT> createState() => _MintNFTState();
}

class _MintNFTState extends State<MintNFT> {
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    var title = useTextEditingController();
    var description = useTextEditingController();
    var price = useTextEditingController();
    var file = useState<File?>(null);
    var backgroundColor = useTextEditingController();
    var nftSkin = useState<NftSkin?>(null);

    return Scaffold(
      appBar: AppBar(
        title: const DisplayText(
          text: 'Mint NFT',
        ),
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                if (file.value != null)
                  Image.file(
                    file.value!,
                    fit: BoxFit.contain,
                    height: 200,
                    width: 200,
                  ),
                GestureDetector(
                  onTap: () async {
                    final XFile? image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    if (image != null) {
                      file.value = File(image.path);
                    }
                  },
                  child: Card(
                    color: Colors.purple[100],
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(
                        Icons.photo_album_rounded,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                DataField(
                  placeHolder: 'Title',
                  controller: title,
                ),
                DataField(
                  placeHolder: 'Description',
                  controller: description,
                ),
                DataField(
                  placeHolder: 'price',
                  controller: price,
                ),
                DataField(
                  placeHolder: 'BG Color',
                  controller: backgroundColor,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.black,
                    child: ListTile(
                      title: DropdownButton<NftSkin>(
                        value: nftSkin.value,
                        style: const TextStyle(color: Colors.white),
                        dropdownColor: Colors.purple,
                        items: <NftSkin>[NftSkin.pink, NftSkin.blue]
                            .map((NftSkin value) {
                          return DropdownMenuItem<NftSkin>(
                            value: value,
                            child: DisplayText(
                              text: value.toString().split('.').last,
                            ),
                          );
                        }).toList(),
                        onChanged: (val) {
                          nftSkin.value = val!;
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 70),
              ],
            ),
          ),
          HookConsumer(
            builder: (ctx, ref, child) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedDisplayButton(
                  text: 'MINT',
                  onPressed: () {
                    if ((title.text.isNotEmpty &&
                                description.text.isNotEmpty &&
                                file.value != null &&
                                price.text.isNotEmpty) &&
                            backgroundColor.text.isNotEmpty ||
                        nftSkin.value != null) {
                      ref.read(marketPlaceProvider.notifier).createNft(
                            file: file.value!,
                            title: title.text,
                            description: description.text,
                            skinColor: nftSkin.value,
                            backgroundColor: backgroundColor.text,
                            price: double.parse(price.text),
                          );
                    }
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DataField extends StatelessWidget {
  final String placeHolder;
  final TextEditingController controller;

  const DataField({
    Key? key,
    required this.placeHolder,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          controller: controller,
          style: GoogleFonts.orbitron(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: placeHolder,
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            fillColor: Colors.black,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
