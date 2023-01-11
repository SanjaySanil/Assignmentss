import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ExpansionTileMainScreen extends StatefulWidget {
  const ExpansionTileMainScreen({Key? key}) : super(key: key);
  static double height = 100;

  @override
  State<ExpansionTileMainScreen> createState() =>
      _ExpansionTileMainScreenState();
}

class _ExpansionTileMainScreenState extends State<ExpansionTileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "EXPERIANCE",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 20,
                ),
                RefactoredContiner(
                    url: "https://assets2.lottiefiles.com/packages/lf20_b34tazlb.json",
                    title: "Android Training",
                    content: "Appening infotech Pvt.Ltd.\nLoida Uttar Pradesh",
                    salary: "",
                    subtile: "3 months+"),
                SizedBox(height:10),
                RefactoredContiner(
                    url: "https://assets9.lottiefiles.com/packages/lf20_ntrhqntu.json",
                    title: "Flutter Internship",
                    content: "Luminar Technolab\nKakkanad  Ernakulam",
                    salary: "Join with us for build your IT career",
                    subtile: "6 months+"),
                SizedBox(height:10),
                RefactoredContiner(
                  url: "https://assets2.lottiefiles.com/packages/lf20_qrcjdqal.json",
                    title: "Java Training",
                    content: "",
                    salary: "Appening infotech Pvt.Ltd.\nLoida Uttar Pradesh",
                    subtile: "2 months+")
              ],
            )),
      ),
    );
  }
}

class RefactoredContiner extends StatefulWidget {
  RefactoredContiner(
      {required this.title,
      required this.content,
      required this.salary,
      required this.subtile,
        required this.url,
      Key? key})
      : super(key: key);
  final String title;
  final String subtile;
  final String content;
  final String salary;
  final String url;

  @override
  State<RefactoredContiner> createState() => _RefactoredContinerState();
}

class _RefactoredContinerState extends State<RefactoredContiner> {
  var height = ExpansionTileMainScreen.height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Lottie.network(
                widget.url,
                fit: BoxFit.fill,
                repeat: true,
                height: 100,
                width: double.infinity),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ExpansionTileCard(
            shadowColor: Colors.transparent,
            expandedColor: Colors.transparent,
            baseColor: Colors.transparent,
            onExpansionChanged: (value) {
              setState(() {
                if (value == true) {
                  height = 200;
                } else {
                  height = 100;
                }
              });
            },
            subtitle:  Text(
              widget.subtile,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            title:  Text(
              widget.title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            children:  [
              Text(
                widget.content,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.salary,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
