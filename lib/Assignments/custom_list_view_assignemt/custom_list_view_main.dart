import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/custom_list_view_assignemt/screens/grid_view.dart';
class CustomListViewMain extends StatelessWidget {
  const CustomListViewMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ViewGrid(),
    );
  }
}
