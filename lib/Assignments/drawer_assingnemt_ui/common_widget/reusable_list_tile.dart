import 'package:flutter/material.dart';

class ReusableListTile extends StatelessWidget {
  const ReusableListTile({Key? key, required this.text, required this.icon})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 30),
      horizontalTitleGap:40,
      leading: Icon(icon,size:25,color: Colors.white70,),
      title: SizedBox(
        child: Text(text,style: const TextStyle(color:Colors.white70),),
      ),
    );
  }
}
