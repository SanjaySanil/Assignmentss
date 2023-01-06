import 'package:flutter/material.dart';
class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({Key? key,required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.teal,
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
        color: Colors.white,
      ),
    );
  }
}
