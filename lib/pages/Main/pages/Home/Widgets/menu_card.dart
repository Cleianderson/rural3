import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key, required this.item, required this.itemDescribe})
      : super(key: key);
  final String item;
  final String itemDescribe;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(this.itemDescribe),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      // horizontal: 9,
                    ),
                    child: Text(
                      this.item,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.star,
                    color:
                        Theme.of(context).unselectedWidgetColor.withAlpha(50),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
