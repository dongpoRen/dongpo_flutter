import 'package:flutter/material.dart';
import '../model/post.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 25.0,
              runSpacing: 10.0,
              children: <Widget>[
                Chip(
                  label: Text('Person'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Dongpo'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text('坡'),
                  ),
                ),
                Chip(
                  label: Text('Dongpo'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      posts[0].imageUrl,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}