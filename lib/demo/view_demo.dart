import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.vertical,

      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment.center,
          child: Text('ONE',
            style: TextStyle(fontSize: 23.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment.center,
          child: Text('TWO',
            style: TextStyle(fontSize: 23.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment.center,
          child: Text('THREE',
            style: TextStyle(fontSize: 23.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}