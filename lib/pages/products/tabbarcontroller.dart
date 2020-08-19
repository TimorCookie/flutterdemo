import 'package:flutter/material.dart';

class TabbarControllerPage extends StatefulWidget {
  TabbarControllerPage({Key key, arguments}) : super(key: key);

  @override
  _TabbarControllerPageState createState() => _TabbarControllerPageState();
}

class _TabbarControllerPageState extends State<TabbarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabbarControllerPage'),
        bottom: TabBar(
          tabs: [Tab(text: '主线课程'), Tab(text: '萌芽路线')],
          controller: this._tabController,
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          Center(
            child: Text('主线课程详情'),
          ),
          Center(
            child: Text('萌芽路线详情'),
          )
        ],
      ),
    );
  }
}
