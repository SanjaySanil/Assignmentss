import 'package:flutter/material.dart';

class RefactoredProductsSection extends StatelessWidget {
   RefactoredProductsSection({
    Key? key,
  }) : super(key: key);
  List items = [
    ["Carrot", "30", "0.5", "https://tse3.mm.bing.net/th?id=OIP.h8ISIodUaQRtSBU06KkvPwHaGr&pid=Api&P=0"],
    ["Apple", "100", "0.5", "https://tse4.mm.bing.net/th?id=OIP.SEMRDAqH9pGGt62J5kEA7gHaFl&pid=Api&P=0"],
    ["Orange", "50", "0.5", "http://specialtyproduce.com/sppics/15565.png"],
    ["Cucumber", "40", "0.5", "https://tse1.mm.bing.net/th?id=OIP.9eZ4Fg15CjaRhksuudTXgQHaEc&pid=Api&P=0"],
    ["Banana", "20", "0.5", "https://tse2.mm.bing.net/th?id=OIP.r-R7Nfiy4_8LTYDNAF4UDgHaFO&pid=Api&P=0"],
    ["Potato", "10", "0.5", "http://3.bp.blogspot.com/-vkgnaOkbJcM/UAje4CY4jUI/AAAAAAAAAHM/tvyOTvAEOSk/s1600/potatoes.jpg"],
    ["Beans", "30", "0.5", "https://fthmb.tqn.com/9TomfdbjBFrHfr7fpfAAQtKnK9w=/2038x1471/filters:fill(auto,1)/GettyImages-183245863-5948a9235f9b58d58a920edb.jpg"],
    ["Grapes", "70", "0.5", "https://tse3.mm.bing.net/th?id=OIP.KNHJ3Zj5fMpWo1Hhs97uDwHaF7&pid=Api&P=0"],
    ["PineApple", "30", "0.5", "https://tse4.mm.bing.net/th?id=OIP.MKP4hfpbJiRNH4gZqUhptQHaG8&pid=Api&P=0"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Best Selling Prodects",
              style: Theme.of(context).textTheme.headline6),
          SizedBox(height:15),
          GridView.builder(
            padding: EdgeInsets.all(0),
            itemCount:items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8,
                childAspectRatio: 1 / 1.2,
                crossAxisSpacing: 8,
                crossAxisCount: 2),
            itemBuilder: (context, index) => RefactoredContainer(
                itemName: items[index][0],
                price: items[index][1],
                weight: items[index][2],
                url: items[index][3]),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "VIEW MORE",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RefactoredContainer extends StatelessWidget {
  const RefactoredContainer({
    Key? key,
    required this.url,
    required this.itemName,
    required this.price,
    required this.weight,
  }) : super(key: key);

  final String itemName;
  final String price;
  final String weight;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: .5, color: Colors.grey.shade400),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit:BoxFit.fill,
                image: NetworkImage(url),
              ),
            ),
          ),
          Text(
            itemName,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text("₹${price}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${weight}Kg"),
              SizedBox(
                height: 30,
                width: 80,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {},
                  child: Text("Add"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
