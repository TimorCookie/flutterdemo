import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key key, arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 12,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('appbar demo'),
              leading: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () =>
                      {Navigator.of(context).pushReplacementNamed('/')}),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () => {print('this is search widget')}),
                IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () => {print('this is settings widget')}),
              ],
              bottom: TabBar(
                indicatorColor: Colors.yellow,
                labelColor: Colors.yellow,
                unselectedLabelColor: Colors.white,
                // indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                tabs: <Widget>[
                  Tab(text: "儿歌"),
                  Tab(text: '绘本'),
                  Tab(text: '口语'),
                  Tab(text: '动画'),
                  Tab(text: "闪卡"),
                  Tab(text: '期中'),
                  Tab(text: '期末'),
                  Tab(text: '毕业'),
                  Tab(text: "唱歌"),
                  Tab(text: '跳舞'),
                  Tab(text: '篮球'),
                  Tab(text: 'rap'),
                ],
              ),
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
            ])));
  }
}
