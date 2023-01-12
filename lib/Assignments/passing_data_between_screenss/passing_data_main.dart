import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/passing_data_between_screenss/screens/screen_one/screen_one.dart';

class PassingDataMain extends StatelessWidget {
  const PassingDataMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "screenOne",
      routes: {
        "screenOne":(context) => ScreenOne(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
