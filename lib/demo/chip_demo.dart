import 'package:flutter/material.dart';
import '../model/post.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];

  String _actionChip = 'Nothing';

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
                Chip(
                  label: Text('City'),
                  onDeleted: () {},  
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_actionChip'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _actionChip = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Lemon'
            ];
          });
        },
      ),
    );
  }
}