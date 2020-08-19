import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpDemoPage extends StatefulWidget {
  HttpDemoPage({Key key, arguments}) : super(key: key);

  @override
  _HttpDemoPageState createState() => _HttpDemoPageState();
}

class _HttpDemoPageState extends State<HttpDemoPage> {
  List jokes = [];
  _getJoke() async {
    const url = 'https://api.apiopen.top/getJoke?page=3&count=2&type=video';
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonRes = convert.jsonDecode(response.body);
      print(jsonRes["result"]);
      print(jsonRes["result"].length);
      setState(() {
        this.jokes = jsonRes["result"];
      });
    }
    // if (response.statusCode == 200) {
    //   var jsonRes = convert.jsonDecode(response.body);
    //   var itemCount = jsonRes['totalItems'];
    //   print('Number of books about http: $itemCount.');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('http page'),
        ),
        body: Column(
          children: [
            RaisedButton(
              child: Text('HTTP_GET'),
              onPressed: () => _getJoke(),
            ),
            RaisedButton(
              child: Text('HTTP_POST'),
              onPressed: () => print('HTTP_POST'),
            ),
            Container(
              child: this.jokes.length > 0 ? Text("有数据了") : Text('请先加载数据...'),
            ),
          ],
        ));
  }
}
