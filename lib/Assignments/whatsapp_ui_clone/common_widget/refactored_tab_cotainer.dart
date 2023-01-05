import 'package:flutter/material.dart';

class RefactoredTabContainer extends StatelessWidget {
  const RefactoredTabContainer(
      {Key? key,
      this.displayDot = false,
      this.message = "",
      this.name = "",
      this.time = "",
      this.url = ""})
      : super(key: key);
  final String name;
  final String message;
  final String time;
  final String url;
  final bool displayDot;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 5),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(url),
              radius: 30,
              backgroundColor: Colors.grey,
            ),
            title: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(message),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(time),
                SizedBox(height: 5),
                displayDot
                    ? Container(
                        child: Text(
                          "1",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.teal),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
