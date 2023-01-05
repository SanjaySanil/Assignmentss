import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer(
      {Key? key,
      required this.iconData,
      required this.text,
      required this.color})
      : super(key: key);
  final Color color;
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 90,
      width: 110,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
