import 'package:flutter/material.dart';
import '../../res/stories.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key key, arguments}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  Widget _getStories(context, index) {
    return ListTile(
      leading: Image.network(stories[index]['img']),
      title: Text(
        stories[index]['ctitle'],
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('绘本故事'),
      ),
      body: ListView.builder(
        itemCount: stories.length,
        itemBuilder: _getStories,
      ),
    );
  }
}
