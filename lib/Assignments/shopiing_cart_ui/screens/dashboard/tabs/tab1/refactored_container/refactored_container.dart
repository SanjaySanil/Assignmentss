import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RefactoredContainerWidget extends StatelessWidget {
  const RefactoredContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade400, width: 1),
      ),
      margin: EdgeInsets.all(15),
      height: 80,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ReusableColumn(
              text: "30 MINS POLICY", url:"assets/images/screen_one/1.png",),
          ReusableColumn(
              text: "TRACEABILITY", url:"assets/images/screen_one/Untitled-1.png",),
          ReusableColumn(
              text: "LOCAL SOURCING",url:"assets/images/screen_one/far.png",),
        ],
      ),
    );
  }
}

class ReusableColumn extends StatelessWidget {
  const ReusableColumn({
    required this.url,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
 final String url;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage(url),height:35,),
        SizedBox(height:10),
        Text(
          text,
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
