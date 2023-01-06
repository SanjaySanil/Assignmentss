import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Crowne Plaza",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        const Text(
          "Kochi,Kerala",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(7),
              child: const Text(
                "8.4/85 reviews",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Icon(
              CupertinoIcons.heart,
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
