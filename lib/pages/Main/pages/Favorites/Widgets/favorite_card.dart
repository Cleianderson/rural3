import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({Key? key, required this.item}) : super(key: key);
  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(this.item),
    );
  }
}
