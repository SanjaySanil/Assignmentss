import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/crowne_plaza_ui/screens/home_screens/home_screen.dart';

class CrownPlazaMain extends StatelessWidget {
  const CrownPlazaMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}
