import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/expansion_tile_with_lottie/screens/expansion_tile_home_screen/expansion_tile_home_screen.dart';

class ExpansionTileMain extends StatelessWidget {
  const ExpansionTileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ExpansionTileMainScreen(),
    );
  }
}
