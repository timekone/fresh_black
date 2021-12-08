import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_black/product_page/widgets/bottom_bar.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFedf3f9),
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(color: Colors.white),
        backgroundColor: Color(0xFF5abefa),
        border: Border.all(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: [
                  Image.asset("assets/honey_sour.png"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "HONEY SOUR",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black),
                        ),
                        Text(
                          "\$20.00",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                        '''00% Arab blend - 30% Peru Monte Verde, 30% Colombia Bucaramanga, 40% Honduras Santa Rosa

The perfect balance of sweet and sour - fresh and rich, stylish and consistent delicious blend. The taste is grapefruit with dried fruit and the addition of sweet buckwheat honey. This combination is so winning that everyone will like it, regardless of level flavors.
                      '''),
                  ),
                ],
              ),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
