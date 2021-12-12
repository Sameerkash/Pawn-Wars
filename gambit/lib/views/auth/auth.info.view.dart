import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gambit/views/auth/auth.vm.dart';
import 'package:gambit/widgets/button.dart';
import 'package:gambit/widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class AuthInfo extends HookConsumerWidget {
  const AuthInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);

    if (auth is Authenticated) {
      context.go('/home');
    }

    final pageController = usePageController();
    final pubkey = useTextEditingController();
    var privateKey = useTextEditingController();
    var nickName = useTextEditingController();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple[200]!,
            Colors.purple[300]!,
            Colors.purple[400]!,
            Colors.purple[500]!,
            Colors.purple[600]!,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 500,
                  padding: const EdgeInsets.all(20),
                  child: PageView(
                    controller: pageController,
                    children: [
                      WalletInfo(
                        privateKey: privateKey,
                        publicKey: pubkey,
                        pageController: pageController,
                      ),
                      PersonalInfo(
                        nickName: nickName,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ElevatedDisplayButton(
                    onPressed: () {
                      ref.read(authProvider.notifier).setAccount(
                            pubKey: pubkey.text,
                            nickName: nickName.text,
                          );
                    },
                    text: 'Next',
                    textColor: Colors.black,
                    color: Colors.white,
                    fontSize: 20,
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

class WalletInfo extends HookConsumerWidget {
  final TextEditingController publicKey;
  final TextEditingController privateKey;
  final PageController pageController;
  const WalletInfo({
    Key? key,
    required this.publicKey,
    required this.privateKey,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const DisplayText(
              text: 'We need your creds',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 20),
            const DisplayText(
              text: 'But Nothing leaves this device',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 60),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: publicKey,
                onChanged: (val) {},
                style: GoogleFonts.orbitron(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Public Key',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.black,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: privateKey,
                onChanged: (val) {},
                style: GoogleFonts.orbitron(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Private Key',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.black,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 30),
            IconButton(
              onPressed: () {
                pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PersonalInfo extends HookConsumerWidget {
  final TextEditingController nickName;
  const PersonalInfo({
    Key? key,
    required this.nickName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const DisplayText(
              text: 'Just one more thing..',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 30),
            const CircleAvatar(
              radius: 60,
            ),
            const SizedBox(height: 50),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: nickName,
                onChanged: (val) {},
                style: GoogleFonts.orbitron(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Nick Name',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  fillColor: Colors.black,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
