import 'package:flutter/material.dart';

class BottomItems extends StatelessWidget {
  const BottomItems(
      {Key? key,
        required this.iconData,
        required this.trailingIcon,
        required this.text})
      : super(key: key);
  final String text;
  final IconData iconData;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 231, 231),
            borderRadius: BorderRadius.circular(30)),
        width: double.infinity,
        child: ListTile(
          leading: Icon(
            iconData,
            color: Colors.grey.shade800,
          ),
          title: Text(text),
          trailing: Icon(
            trailingIcon,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
