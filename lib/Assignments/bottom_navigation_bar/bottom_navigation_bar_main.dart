import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/bottom_navigation_bar/screens/dashboard.dart';
class BottomNavBarMain extends StatelessWidget {
  const BottomNavBarMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: DashBoard(),
    );
  }
}
