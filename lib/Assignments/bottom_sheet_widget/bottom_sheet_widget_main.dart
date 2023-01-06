import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/bottom_sheet_widget/bottom_sheet_home_screen/bottom_sheet_home_screen.dart';

class BottomSheetWidgetMain extends StatelessWidget {
  const BottomSheetWidgetMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:BottomHomeScreen(),
    );
  }
}
