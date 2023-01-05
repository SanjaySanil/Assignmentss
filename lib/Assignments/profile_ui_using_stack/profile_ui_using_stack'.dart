import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/profile_ui_using_stack/screen/main_screen.dart';

class ProfileUIUsingStackMain extends StatelessWidget {
  const ProfileUIUsingStackMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ScreenOne(),
    );
  }
}

