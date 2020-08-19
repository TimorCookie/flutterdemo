import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('appbardemo'),
        onPressed: () => {Navigator.pushNamed(context, '/appbar')},
        color: Theme.of(context).accentColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
