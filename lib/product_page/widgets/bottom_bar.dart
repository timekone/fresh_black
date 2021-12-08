import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        children: [
          Material(
            color: Color(0xFFede8e4),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.minus,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("1"),
          ),
          Material(
            color: Color(0xFFede2d9),
            child: IconButton(
              icon: Icon(CupertinoIcons.plus),
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Spacer(),
          Material(
            color: Colors.transparent,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF5abefa),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: SizedBox(
                  width: 120,
                  height: 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Add to cart"),
                      Icon(CupertinoIcons.shopping_cart),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
