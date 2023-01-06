import 'package:flutter/material.dart';

class CertifiedSection extends StatelessWidget {
  const CertifiedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:10),
      color: Colors.white,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "We are working towards safe food - which are Nutri-Locked and hygenic as well",
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height:5),
                Row(
                  children: const [
                    Text(
                      "READ MORE",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width:10),
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 10,
                      child: Icon(Icons.arrow_forward_ios,size:17,color: Colors.white,),
                    )
                  ],
                )
              ],
            ),
          ),
          const Image(
              image: NetworkImage(
                  "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/certified-stamp-design-template-a4b7c8b668d625de21e8f7158d34584b_screen.jpg?ts=1598207310")),
        ],
      ),
    );
  }
}
