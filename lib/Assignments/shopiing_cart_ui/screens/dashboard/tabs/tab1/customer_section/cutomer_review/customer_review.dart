import 'package:flutter/material.dart';

class CustomerReviewSection extends StatelessWidget {
  const CustomerReviewSection({
    required this.url,
    required this.position,
    required this.name,
    required this.content,
    Key? key,
  }) : super(key: key);
  final String url;
  final String name;
  final String position;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(width: 1, color: Colors.grey.shade300),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(url),
            ),
            title: Text(
              name,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
            subtitle: Text(
              position,
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.format_quote_outlined,
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(fontSize:12,
                fontWeight: FontWeight.w500, color: Colors.grey.shade700),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
