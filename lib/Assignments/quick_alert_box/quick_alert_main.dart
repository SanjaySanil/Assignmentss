import 'package:flutter/material.dart';

import 'screens/sample_screen/sample_screen.dart';

class QuickAlertMain extends StatelessWidget {
  const QuickAlertMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SampleScreen(),
    );
  }
}
