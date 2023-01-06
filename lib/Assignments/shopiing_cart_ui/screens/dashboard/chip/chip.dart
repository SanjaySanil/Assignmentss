import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5),
      child: Chip(
          backgroundColor: Colors.green.shade50,
          side: BorderSide(width: 2, color: Colors.green.shade100),
          label: Text(
            text,
            style: TextStyle(color: Colors.green.shade900),
          )),
    );
  }
}
