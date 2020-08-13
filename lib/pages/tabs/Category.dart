import 'package:flutter/material.dart';
import '../../res/courses.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key key}) : super(key: key);

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
                  courses[index]['type'],
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
