import 'package:flutter/material.dart';
import 'package:gambit/views/home/home.view.dart';
import 'package:gambit/views/room/room.view.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
