import 'package:flutter/material.dart';
import 'package:rural3/pages/Main/pages/Favorites/Widgets/favorite_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (cnt, inx) => FavoriteCard(
          item: inx.toString(),
        ),
      ),
    );
  }
}
