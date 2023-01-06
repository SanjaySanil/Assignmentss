
import 'package:flutter/material.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Exit?"),
          content: Text("Do you want to exit?"),
          actions: [
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("yes"),),
            ElevatedButton(onPressed: (){Navigator.of(context).pop(false);}, child: Text("No"),),
          ],
        ),
      );
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
