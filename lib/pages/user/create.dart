import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  final arguments;
  const CreatePage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册成功'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('恭喜成为第${this.arguments['userNo']}个用户！',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.end),
          RaisedButton(
            child: Text('立即体验'),
            onPressed: () =>
                {Navigator.of(context).pushReplacementNamed('/login')},
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          )
        ],
      ),
    );
  }
}
