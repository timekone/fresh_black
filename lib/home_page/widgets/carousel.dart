import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A horizontally scrolled carousel for displaying product category.
///
/// Is a sliver.
class Carousel extends StatelessWidget {
  Carousel({
    Key? key,
    this.children = const [],
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 0, 8),
            child: Text(
              "Single Origin",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: 320,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
