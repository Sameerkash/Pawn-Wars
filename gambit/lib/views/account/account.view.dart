import 'package:flutter/material.dart';
import 'package:gambit/views/auth/auth.vm.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountView extends HookConsumerWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              ref.read(authProvider.notifier).deleteAccount();
            },
            child: const Text('Delete Account')),
      ),
    );
  }
}
