import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/dashboard.dart';

class ShoppigCartUIMain extends StatelessWidget {
  const ShoppigCartUIMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardCart(),
    );
  }
}
