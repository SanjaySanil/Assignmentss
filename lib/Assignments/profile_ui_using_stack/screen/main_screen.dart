import 'package:flutter/material.dart';
import 'main_screen_header/main_screen_header.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text(
          "Profile".toUpperCase(),
        ),
        actions: [
          Icon(Icons.more_vert_outlined),
          SizedBox(width: 15),
        ],
      ),
      body: MainScreenHeaderWidget(),
    );
  }
}

