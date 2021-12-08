import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_black/home_page/widgets/carousel.dart';
import 'package:fresh_black/home_page/widgets/floating_sliver_app_bar.dart';
import 'package:fresh_black/home_page/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(
      //   middle: Text('Home'),
      // ),
      child: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            FloatingSliverAppBar(),

            /////////////////
            Carousel(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
            Carousel(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
            Carousel(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
