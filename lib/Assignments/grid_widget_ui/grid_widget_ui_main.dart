import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/grid_widget_ui/screens/main_screen.dart';

class GridWidgetUiName extends StatelessWidget {
  const GridWidgetUiName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
