import 'package:flutter/material.dart';
import 'package:gambit/views/auth/auth.view.dart';
import 'package:gambit/views/auth/auth.vm.dart';
import 'package:gambit/views/home/home.view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppView extends HookConsumerWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);

    return auth.map(
      loading: (_) => const Center(child: CircularProgressIndicator()),
      authenticated: (user) =>  const HomeView(),
      unAuthenticated: (_) => const AuthView(),
    );
  }
}
