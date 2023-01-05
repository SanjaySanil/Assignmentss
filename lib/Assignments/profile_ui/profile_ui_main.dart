import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/profile_ui/screens/profile_page/profie_page.dart';
class ProfileUiMain extends StatelessWidget {
  const ProfileUiMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ProfilePage(),
    );
  }
}
