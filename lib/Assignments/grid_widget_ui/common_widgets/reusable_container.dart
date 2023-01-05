import 'package:flutter/material.dart';

class RefactoredContainer extends StatelessWidget {
  const RefactoredContainer({Key? key, required this.title, required this.url})
      : super(key: key);
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
