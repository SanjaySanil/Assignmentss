import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';
class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: floatigActionButtonColor,
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.message_outlined),
        color: Colors.white,
      ),
    );
  }
}
