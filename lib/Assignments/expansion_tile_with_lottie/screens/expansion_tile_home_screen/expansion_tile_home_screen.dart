import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExpansionTileMainScreen extends StatelessWidget {
  const ExpansionTileMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          child: ExpansionTile(title:  LottieBuilder.network("https://assets8.lottiefiles.com/packages/lf20_vpkgiT.json",fit: BoxFit.fill,),
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
