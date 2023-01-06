import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/app_bar/app_bar.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/blog_section/blog_section.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/carousel_slider_widget/carousel_slider_widget.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/certified_section/certified_section.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/chip/chip.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/customer_section/customer_section.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/get_know_us_section/get_know_us__section.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/refactored_container/refactored_container.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/refactored_product_section/refactored_product_section.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/shop_catageory/shop_cataegory.dart';
class TabOne extends StatelessWidget {
  const TabOne({
    Key? key,
    required this.itemsName,
    required this.items,
  }) : super(key: key);

  final List itemsName;
  final List items;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBarWidget(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemsName.length,
                  itemBuilder: (context, index) => ChipWidget(
                    text: itemsName[index],
                  ),
                ),
              ),
              CarouselSliderWidget(
                listLength: items[0].length,
                position: 0,
              ),
              RefactoredContainerWidget(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Shop By Category",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              ShopCataegory(),
              SizedBox(height: 10),
              CarouselSliderWidget(
                position: 1,
                listLength: items[1].length,
                length: 6,
              ),
              SizedBox(height: 10),
              RefactoredProductsSection(),
              SizedBox(height: 10),
              const CertifiedSection(),
              BlogSection(),
              const SizedBox(height: 10),
              CustomerSection(),
              const SizedBox(
                height: 10,
              ),
              GetKnowUsSection(),
              Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Copyright @ 2021 Farmers Fresh Zone.All Right Reversed. V 2.40.22",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
