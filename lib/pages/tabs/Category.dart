import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  List courses = [
    {"type": '儿歌', "img": "https://qiniucdn.jiliguala.com/L1XX_L6XX_img3.png"},
    {
      "type": '单词',
      "img": "https://qiniucdn.jiliguala.com/B2MC_L0XX_L6XX_img3.png"
    },
    {
      "type": '绘本',
      "img": "https://qiniucdn.jiliguala.com/L0XX_L6XX_Entity_0_6_img3.png"
    },
    {
      "type": '口语',
      "img": "https://qiniucdn.jiliguala.com/L1XX_L2XX_img.png",
    },
    {
      "type": '动画',
      "img": "https://qiniucdn.jiliguala.com/L1XX_L6XX_Entity_1_6_img3.png",
    }
  ];

  CategoryTab({Key key}) : super(key: key);

  Widget _getCourse(context, index) {
    return Card(
        // margin: EdgeInsets.all(20),
        child: InkWell(
      onTap: () => {Navigator.pushNamed(context, '/story')},
      child: Column(
        children: [
          Column(
            children: [
              Image.network(
                courses[index]['img'],
                fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
              ListTile(
                // leading: Image.network(courses[index]['img']),
                title: Text(
                  this.courses[index]['type'],
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courses.length,
      itemBuilder: this._getCourse,
    );
  }
}
