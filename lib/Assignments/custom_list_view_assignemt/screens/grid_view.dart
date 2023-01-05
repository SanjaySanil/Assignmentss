import 'package:flutter/material.dart';

class ViewGrid extends StatelessWidget {
  var names = ['sanjat', 'shibu', 'anand','annak','djdjd'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return
          Text(names[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
      ),
    );
  }
}
