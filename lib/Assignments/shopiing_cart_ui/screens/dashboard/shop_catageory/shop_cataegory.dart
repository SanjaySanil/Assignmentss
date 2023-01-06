import 'package:flutter/material.dart';

class ShopCataegory extends StatelessWidget {
  ShopCataegory({
    Key? key,
  }) : super(key: key);
  List items = [
    ["Offers", "https://www.dancingkangarootours.com.au/wp-content/uploads/2018/09/Special-Offer.png"],
    ["Vegetables", "https://tse1.mm.bing.net/th?id=OIP.P67KVkh2iws0w5AFAVD-QwHaE5&pid=Api&P=0"],
    ["Fruits", "https://images.creativemarket.com/0.1.0/ps/4007769/910/607/m2/fpnw/wm1/ojjyl9nu0s2mcx3lzmi12p4yjrnf99xolh7su8qfzxujcgfxdoh5k7erxujvnuj1-.jpg?1518655059&s=8ac9fe9551f0b13656c139dde341046d"],
    ["Exotic", "https://www.healthyfoodtribe.com/wp-content/uploads/2022/10/cherimoyas.jpg"],
    ["Fresh Cut", "https://thumbs.dreamstime.com/b/bowl-fresh-cut-fruits-wooden-table-top-view-113086058.jpg"],
    ["Nutrition Changers", "https://i.pinimg.com/originals/11/cc/a2/11cca229e5151ba003a78b0cf66a9f73.jpg"],
    ["Packed Flavours", "https://tse4.mm.bing.net/th?id=OIP.pv3HZmUGg8dm4WqKGWh1bwHaE6&pid=Api&P=0"],
    ["Gourmet Salads","https://static.fanpage.it/wp-content/uploads/sites/22/2019/09/ceci.jpg"]
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 8,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.2,
            crossAxisSpacing: 8,
            crossAxisCount: 3),
        itemBuilder: (context, index) => ItemsContainer(
          text: items[index][0],
          url: items[index][1],
        ),
      ),
    );
  }
}

class ItemsContainer extends StatelessWidget {
  const ItemsContainer({
    required this.text,
    required this.url,
    Key? key,
  }) : super(key: key);
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 2)],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              ),
            ),
            height: 100,
            width: double.infinity,
          ),
          const SizedBox(height: 10),
          Text(
            text,
            style: const TextStyle(fontSize:14),
          ),
        ],
      ),
    );
  }
}
