import 'package:flutter/material.dart';

import '../common_widgets/reusable_container.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List container = [
      ["https://oec.world/api/image?slug=country&memberSlug=usa&size=splash","USA"],
      ["https://i.natgeofe.com/k/42e832f5-fd48-43ff-b338-091bdf4048ca/india-tajmahal_16x9.jpg?w=1200","INDIA"],
      ["https://www.state.gov/wp-content/uploads/2019/04/China-2107x1406.jpg","CHINA"],
      ["https://www.expatica.com/app/uploads/sites/9/2017/07/cost-of-living-thun.jpg","SWITZERLAND"],
      ["https://cdn.britannica.com/05/58605-050-86F58113/Annapurna-massif-village-Nepal.jpg","HIMALAYA"],
      ["https://www.kids-world-travel-guide.com/images/paris_eiffeltower_ssk500.jpeg","PARIS"],
      ["https://www.pandotrip.com/wp-content/uploads/2018/03/Christ-The-ReedemerRio-de-Janeiro-Brasil.jpg","BRAZIL"],
      ["https://www.pandotrip.com/wp-content/uploads/2018/03/View-of-the-Sydney-Harbour-with-some-ferries-passing-by-Sydney-Opera-House.jpg","AUSTRALIA"]
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title:Text("Around The World"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio:1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: container.length,
              itemBuilder: (BuildContext ctx, index) {
                return RefactoredContainer(
                  url: container[index][0],
                  title: container[index][1],
                );
              }),
        ),
      ),
    );
  }
}
