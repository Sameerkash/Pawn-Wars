import 'package:flutter/material.dart';
import 'package:gambit/views/game/game.view.dart';
import 'package:gambit/views/room/room.view.dart';
import 'package:go_router/go_router.dart';
import 'views/app.view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Pawn Wars',
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const AppView(),
        ),
      ),
      // GoRoute(
      //   path: '/login',
      //   pageBuilder: (context, state) => MaterialPage<void>(
      //     key: state.pageKey,
      //     child: const ImportAccount(),
      //   ),
      // ),
      GoRoute(
        path: '/room',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const RoomView(),
        ),
      ),
      GoRoute(
        path: '/game',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: GameView(),
        ),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Container(),
    ),
  );
}
