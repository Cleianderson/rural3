import 'package:extended_tabs/extended_tabs.dart';
import 'package:flutter/material.dart';
import 'package:rural3/pages/Main/pages/Home/Widgets/sub_table.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    final _weekDay = DateTime.now().weekday - 1;

    _tabController = TabController(
      vsync: this,
      length: 5,
      initialIndex: _weekDay < 0 || _weekDay > 4 ? 0 : _weekDay,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            labelPadding: const EdgeInsets.symmetric(vertical: 10),
            indicatorColor: Colors.white,
            tabs: [
              ExtendedTab(child: Text('Seg')),
              ExtendedTab(child: Text('Ter')),
              ExtendedTab(child: Text('Qua')),
              ExtendedTab(child: Text('Qui')),
              ExtendedTab(child: Text('Sex')),
            ],
          ),
        ),
      ),
      body: ExtendedTabBarView(
        controller: _tabController,
        children: [
          SubTable(indexDay: 0),
          SubTable(indexDay: 1),
          SubTable(indexDay: 2),
          SubTable(indexDay: 3),
          SubTable(indexDay: 4),
        ],
      ),
    );
  }
}
