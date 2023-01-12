import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedSwitcher(
          duration: Duration(seconds:60),
          child: Text("Sanjay"),
          transitionBuilder: ((Widget child, Animation<double> animation){
            return ScaleTransition(scale: animation, child: Text("hellow"),);
          }),
        ),
      ),
    );
  }
}
