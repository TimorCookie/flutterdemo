import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TabBar(tabs: <Widget>[
                      Tab(text: "种子路线"),
                      Tab(text: '萌芽路线'),
                      Tab(text: '呱呱美语'),
                    ]),
                  )
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              ListView(
                children: [
                  ListTile(
                    title: Text('种子路线学习计划'),
                  ),
                  ListTile(
                    title: Text('种子路线学习计划'),
                  ),
                  ListTile(
                    title: Text('种子路线学习计划'),
                  ),
                  ListTile(
                    title: Text('种子路线学习计划'),
                  ),
                  ListTile(
                    title: Text('种子路线学习计划'),
                  ),
                  ListTile(
                    title: Text('种子路线学习计划'),
                  ),
                  ListTile(
                    title: Text('种子路线学习计划'),
                  ),
                  RaisedButton(
                    child: Text('appbar'),
                    onPressed: () => {Navigator.pushNamed(context, '/appbar')},
                    color: Theme.of(context).accentColor,
                    textTheme: ButtonTextTheme.primary,
                  ),
                  RaisedButton(
                    child: Text('tabcontroller'),
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/tabcontroller')},
                    color: Theme.of(context).accentColor,
                    textTheme: ButtonTextTheme.primary,
                  ),
                  RaisedButton(
                    child: Text('http'),
                    onPressed: () => {Navigator.pushNamed(context, '/http')},
                    color: Theme.of(context).accentColor,
                    textTheme: ButtonTextTheme.primary,
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text('萌芽路线学习计划'),
                  ),
                  ListTile(
                    title: Text('萌芽路线学习计划'),
                  ),
                  ListTile(
                    title: Text('萌芽路线学习计划'),
                  ),
                  ListTile(
                    title: Text('萌芽路线学习计划'),
                  ),
                  ListTile(
                    title: Text('萌芽路线学习计划'),
                  ),
                  ListTile(
                    title: Text('萌芽路线学习计划'),
                  ),
                  ListTile(
                    title: Text('萌芽路线学习计划'),
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text('呱呱美语学习计划'),
                  ),
                  ListTile(
                    title: Text('呱呱美语学习计划'),
                  ),
                  ListTile(
                    title: Text('呱呱美语学习计划'),
                  ),
                  ListTile(
                    title: Text('呱呱美语学习计划'),
                  ),
                  ListTile(
                    title: Text('呱呱美语学习计划'),
                  ),
                  ListTile(
                    title: Text('呱呱美语学习计划'),
                  ),
                  ListTile(
                    title: Text('呱呱美语学习计划'),
                  )
                ],
              ),
            ])));
  }
}
