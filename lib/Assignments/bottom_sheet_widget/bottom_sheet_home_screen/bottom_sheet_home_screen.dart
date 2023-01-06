import 'package:flutter/material.dart';

class BottomHomeScreen extends StatelessWidget {
  const BottomHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("my bottom sheet"),
      ),
      body: Container(
       child: TextButton(onPressed: (){
         showModalBottomSheet(context: context, builder: (context) => Container(),);
       },child: Text("press me"),)
      ),
    );
  }
}
