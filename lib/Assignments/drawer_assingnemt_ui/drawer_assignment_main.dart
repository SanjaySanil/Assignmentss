import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/drawer_assingnemt_ui/screens/dashboard/dashboard.dart';
class DrawerAssignmentMain extends StatelessWidget {
  const DrawerAssignmentMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardWidget(),
    );
  }
}
