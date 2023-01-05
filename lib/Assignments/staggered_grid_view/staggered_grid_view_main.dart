import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/staggered_grid_view/screens/dashboard.dart';
class StaggeredGridViewMain extends StatelessWidget {
  const StaggeredGridViewMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
