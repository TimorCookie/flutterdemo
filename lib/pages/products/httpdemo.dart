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
  String postData = '';
  _getJoke() async {
    const url = 'https://api.apiopen.top/getJoke?page=3&count=2&type=video';
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonRes = convert.jsonDecode(response.body);
      setState(() {
        this.jokes = jsonRes["result"];
      });
    }
  }

  _getSignupCode() async {
    const url = 'https://dev.jiliguala.com/api/promoter/verificode';
    final response =
        await http.post(url, body: {'mobile': '17621251706', 'mode': 'signup'});
    print(response.body);
    var jsonRes = convert.jsonDecode(response.body);
    setState(() {
      this.postData = jsonRes['msg'];
    });
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
              onPressed: () => _getSignupCode(),
            ),
            Container(
              child: this.jokes.length > 0
                  ? Text('${this.jokes}')
                  : Text('请先加载数据...'),
            ),
            Container(
              child: Text('http_post获取的数据：${this.postData}'),
            )
          ],
        ));
  }
}
