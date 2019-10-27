import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
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