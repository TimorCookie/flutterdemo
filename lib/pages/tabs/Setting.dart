import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(
          child: Text('去登录页'),
          onPressed: () => {
            Navigator.pushNamed(context, '/login',
                arguments: {"userName": 'Timokie'})
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('去注册页'),
          onPressed: () => {Navigator.pushNamed(context, '/register')},
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}
