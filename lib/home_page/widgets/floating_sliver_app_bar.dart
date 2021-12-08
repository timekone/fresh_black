import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A sliver AppBar with rounded corners and a shade.
class FloatingSliverAppBar extends StatelessWidget {
  const FloatingSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
        child: IconButton(
          icon: Icon(CupertinoIcons.bars),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 18, 0),
          child: IconButton(
            icon: Icon(CupertinoIcons.shopping_cart),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ],
      pinned: false,
      expandedHeight: 300,
      // expandedHeight: 350,

      // title: Padding(
      //   padding: const EdgeInsets.only(top: 20.0),
      //   child: Text("Fresh Black"),
      // ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
            child: Text(
              "Fresh Black",
              style: Theme.of(context).textTheme.headline5?.apply(
                color: Colors.black,
              ),
            ),
          ),
        ),
        centerTitle: false,
        titlePadding: EdgeInsets.all(24),
        background: Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 4, 4, 4),
          // padding: const EdgeInsets.fromLTRB(4.0, 4, 4, 90),
          child: Card(
            elevation: 5.5,
            clipBehavior: Clip.antiAlias,
            color: Color(0xFF0098ff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Image.asset(
              "assets/black.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
