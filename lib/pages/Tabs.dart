import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final tabIndex;
  Tabs({Key key, this.tabIndex = 1}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.tabIndex);
}

class _TabsState extends State<Tabs> {
  int _activeIndex = 0;
  List tabList = [HomeTab(), CategoryTab(), SettingTab()];

  _TabsState(tabIndex) {
    if (tabIndex != null) {
      this._activeIndex = tabIndex;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('叽里呱啦'),
      ),
      body: this.tabList[this._activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('设置'))
        ],
        onTap: (value) => {
          this.setState(() {
            this._activeIndex = value;
          })
        },
        currentIndex: this._activeIndex,
        fixedColor: Colors.green,
        iconSize: 36.0,
      ),
    );
  }
}
