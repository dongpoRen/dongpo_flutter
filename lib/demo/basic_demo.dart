import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            color: Color.fromRGBO(3, 55, 99, 1.0),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'dongpo',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 35.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.dart',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey
            )
          )
        ],
      ),
    );
  }
}


class TextDemo extends StatelessWidget {
  
  final TextStyle _textStyle = TextStyle(
    fontSize: 32.0,
  );

  final String _author = '东坡';
  final String _title = '哈哈哈😁';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title 》 -- $_author.hello，大诗人啊',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}