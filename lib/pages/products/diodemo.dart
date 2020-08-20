import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioDemoPage extends StatefulWidget {
  DioDemoPage({Key key, arguments}) : super(key: key);

  @override
  _DioDemoPageState createState() => _DioDemoPageState();
}

class _DioDemoPageState extends State<DioDemoPage> {
  @override
  void initState() {
    super.initState();
  }

  List _jokelist = [];
  _dioGet() async {
    var dio = Dio();
    const url = 'https://api.apiopen.top/getJoke?page=3&count=2&type=video';
    Response res = await dio.get(url);
    // print(res.data['result']);
    setState(() {
      this._jokelist = res.data['result'];
    });
  }

  _dioPost() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dio demo'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('DIO_GET'),
            onPressed: () => _dioGet(),
          ),
          RaisedButton(
            child: Text('DIO_POST'),
            onPressed: () => _dioPost(),
          ),
          this._jokelist.length <= 0
              ? Text('加载中...')
              : ListView(
                  shrinkWrap: true,
                  children: this._jokelist.map((value) {
                    return ListTile(
                      title: Text(value['text']),
                    );
                  }).toList(),
                )
        ],
      ),
    );
  }
}
