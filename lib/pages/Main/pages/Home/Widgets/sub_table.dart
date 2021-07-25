import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rural3/pages/Main/pages/Home/Widgets/menu_card.dart';
import 'package:rural3/services/api.dart';

const daysNames = {
  0: 'Segunda',
  1: 'Terça',
  2: 'Quarta',
  3: 'Quinta',
  4: 'Sexta',
};
final Map<String, String> _keysExtended = {
  'suc': 'Suco',
  'p1': 'Prato Principal 1',
  'p2': 'Prato Principal 2',
  'veg': 'Vegetariano',
  'fag': 'Fast Grill',
  'gre': 'Na Grelha',
  'gua': 'Guarnição',
  'sob': 'Sobremesa',
  'sopa': 'Sopa',
  'sal': 'Salada Crua',
  'sco': 'Salada Cozida',
};
const _keysLaunch = [
  'p1',
  'p2',
  'gua',
  'fag',
  'gre',
  'veg',
  'sob',
  'sal',
  'sco',
  'suc',
];
const _keysDinner = [
  'p1',
  'p2',
  'gua',
  'fag',
  'gre',
  'veg',
  'sob',
  'sal',
  'sopa',
  'suc',
];

class SubTable extends StatelessWidget {
  const SubTable({Key? key, @required this.indexDay}) : super(key: key);
  final indexDay;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(child: Text('Almoço')),
            Tab(child: Text('Jantar')),
          ],
        ),
        body: ExtendedTabBarView(
          children: [
            ListView.builder(
              itemCount: Api().menuData['data'][indexDay]['almoco'].length,
              itemBuilder: (cnt, inx) {
                return MenuCard(
                  item: Api().menuData['data'][indexDay]['almoco']
                      [_keysLaunch.elementAt(inx)],
                  itemDescribe:
                      _keysExtended[_keysLaunch.elementAt(inx)] ?? 'Not Found',
                );
              },
            ),
            ListView.builder(
              itemCount: Api().menuData['data'][indexDay]['jantar'].length,
              itemBuilder: (cnt, inx) {
                return MenuCard(
                  item: Api().menuData['data'][indexDay]['jantar']
                      [_keysDinner.elementAt(inx)],
                  itemDescribe:
                      _keysExtended[_keysDinner.elementAt(inx)] ?? 'Not Found',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
