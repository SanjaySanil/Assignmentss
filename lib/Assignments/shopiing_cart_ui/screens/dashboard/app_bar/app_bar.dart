import 'package:flutter/material.dart';
class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.green,
      expandedHeight: 110,
      title: Text("FARMERS FRESH ZONE"),
      actions: [
        Row(
          children: const [
            Icon(
              Icons.location_on_outlined,
              size: 17,
            ),
            Text(
              "Kochi",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(width: 10),
            Icon(Icons.arrow_drop_down),
            SizedBox(width:5)
          ],
        ),
      ],
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 17,
                  ),
                  hintText: "Search for Vegetabels Frutis...",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
          ),
        ],
      ),
    );
  }
}
