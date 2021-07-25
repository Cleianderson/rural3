import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/Favorites/favorites_page.dart';
import 'pages/Home/home_page.dart';
import 'pages/Warnings/warnings_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final mainPageController = PageController();
  int mainPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: mainPageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (inx) {
          setState(() => mainPageIndex = inx);
        },
        children: [
          HomePage(),
          FavoritePage(),
          WarningsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (inx) => mainPageController.jumpToPage(inx),
        currentIndex: mainPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_favorites),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.envelope),
            label: 'Avisos',
          ),
        ],
      ),
    );
  }
}
