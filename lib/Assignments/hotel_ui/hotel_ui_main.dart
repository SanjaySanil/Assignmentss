import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/hotel_ui/screens/dashboard/dashboard.dart';
class HotelUIMain extends StatelessWidget {
  const HotelUIMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Dashboard(),
    );
  }
}
