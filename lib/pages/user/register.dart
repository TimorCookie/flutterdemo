import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key, arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('昵称'),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  title: Text('手机号'),
                  leading: Icon(Icons.phone),
                ),
                ListTile(
                  title: Text('邮箱'),
                  leading: Icon(Icons.mail),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          RaisedButton(
            child: Text('注册成为新用户'),
            onPressed: () => {
              Navigator.of(context)
                  .pushReplacementNamed('/create', arguments: {"userNo": 99})
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          )
        ],
      ),
    );
  }
}
