import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final arguments;
  const LoginPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('back'),
        onPressed: () => {
          Navigator.of(context).pop(),
        },
      ),
      appBar: AppBar(title: Text('登录')),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  title: Text('手机号：'),
                  leading: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text('验证码:'),
                  leading: Icon(Icons.note),
                )
              ],
            ),
          ),
          RaisedButton(
            child: Text('登录'),
            onPressed: () => {Navigator.pushNamed(context, '/', arguments: 1)},
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          )
        ],
      ),
    );
  }
}
