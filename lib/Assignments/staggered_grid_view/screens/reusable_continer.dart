import 'package:flutter/material.dart';
class ReusableContainer extends StatelessWidget {
  const ReusableContainer(
      {required this.url,
        required this.title,
        required this.subtitle,
        Key? key})
      : super(key: key);
  final String url;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 2)],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ),
              subtitle: Text(subtitle),
            ),
          )
        ],
      ),
    );
  }
}
