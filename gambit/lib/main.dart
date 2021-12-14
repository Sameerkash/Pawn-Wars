import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gambit/views/account/account.view.dart';
import 'package:gambit/views/auth/auth.info.view.dart';
import 'package:gambit/views/auth/auth.view.dart';
import 'package:gambit/views/game/game.view.dart';
import 'package:gambit/views/home/home.view.dart';
import 'package:gambit/views/markeplace/markeplace.view.dart';
import 'package:gambit/views/room/create.room.view.dart';
import 'package:gambit/views/room/join.room.dart';
import 'package:gambit/views/room/room.view.dart';
import 'package:go_router/go_router.dart';
import 'models/player/player.dart';
import 'models/room/room.dart';
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
        routes: [
          GoRoute(
            path: 'auth-info',
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const AuthInfo(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/home',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: HomeView(),
        ),
        routes: [
          GoRoute(
            path: 'room',
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: RoomView(),
            ),
            routes: [
              GoRoute(
                path: 'create',
                pageBuilder: (context, state) => CupertinoPage<void>(
                  key: state.pageKey,
                  child: const CreateRoomView(),
                ),
              ),
              GoRoute(
                path: 'join',
                pageBuilder: (context, state) => CupertinoPage<void>(
                  key: state.pageKey,
                  child: const JoinRoomView(),
                ),
              ),
              GoRoute(
                path: 'game',
                pageBuilder: (context, state) => MaterialPage<void>(
                  key: state.pageKey,
                  child: GameView(room: state.extra! as Room),
                ),
              ),
            ],
          ),
          GoRoute(
              path: 'market',
              pageBuilder: (context, state) => MaterialPage<void>(
                    key: state.pageKey,
                    child: MarketPlaceView(),
                  ),
              routes: [
                GoRoute(
                  path: 'mint',
                  pageBuilder: (context, state) => MaterialPage<void>(
                    key: state.pageKey,
                    child: const MintNFT(),
                  ),
                ),
              ]),
          GoRoute(
            path: 'account',
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const AccountView(),
            ),
          ),
        ],
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Container(),
    ),
  );
}
