import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key key, arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('appbar demo'),
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => {print('this is menu widget')}),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () => {print('this is search widget')}),
                IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () => {print('this is settings widget')}),
              ],
              bottom: TabBar(tabs: <Widget>[
                Tab(text: "儿歌"),
                Tab(text: '绘本'),
                Tab(text: '口语'),
                Tab(text: '动画')
              ]),
            ),
            body: TabBarView(children: <Widget>[
              ListView(
                children: [
                  ListTile(
                    title: Text('儿歌内容部分'),
                  ),
                  ListTile(
                    title: Text('儿歌内容部分'),
                  ),
                  ListTile(
                    title: Text('儿歌内容部分'),
                  ),
                  ListTile(
                    title: Text('儿歌内容部分'),
                  ),
                  ListTile(
                    title: Text('儿歌内容部分'),
                  ),
                  ListTile(
                    title: Text('儿歌内容部分'),
                  ),
                  ListTile(
                    title: Text('儿歌内容部分'),
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text('绘本内容部分'),
                  ),
                  ListTile(
                    title: Text('绘本内容部分'),
                  ),
                  ListTile(
                    title: Text('绘本内容部分'),
                  ),
                  ListTile(
                    title: Text('绘本内容部分'),
                  ),
                  ListTile(
                    title: Text('绘本内容部分'),
                  ),
                  ListTile(
                    title: Text('绘本内容部分'),
                  ),
                  ListTile(
                    title: Text('绘本内容部分'),
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text('口语内容部分'),
                  ),
                  ListTile(
                    title: Text('口语内容部分'),
                  ),
                  ListTile(
                    title: Text('口语内容部分'),
                  ),
                  ListTile(
                    title: Text('口语内容部分'),
                  ),
                  ListTile(
                    title: Text('口语内容部分'),
                  ),
                  ListTile(
                    title: Text('口语内容部分'),
                  ),
                  ListTile(
                    title: Text('口语内容部分'),
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text('动画内容部分'),
                  ),
                  ListTile(
                    title: Text('动画内容部分'),
                  ),
                  ListTile(
                    title: Text('动画内容部分'),
                  ),
                  ListTile(
                    title: Text('动画内容部分'),
                  ),
                  ListTile(
                    title: Text('动画内容部分'),
                  ),
                  ListTile(
                    title: Text('动画内容部分'),
                  ),
                  ListTile(
                    title: Text('动画内容部分'),
                  )
                ],
              )
            ])));
  }
}
