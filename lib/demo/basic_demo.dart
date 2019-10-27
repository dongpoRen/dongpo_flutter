import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[400],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 55, 99, 1.0),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(8, 89, 90, 1.0),
              border: Border.all(
                  color: Colors.indigo[300],
                  width: 3,
                  style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.all(Radius.circular(45.0)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1.0, 7.0),
                  color: Color.fromRGBO(90, 90, 255, 1.0),
                  blurRadius: 10.0, // 模糊程度
                  spreadRadius: -1, // 阴影扩散程度(+向外扩展，-向内扩展)
                )
              ],
              // shape: BoxShape.circle, // 不能与borderRadius同事设置（当shape为circle时）
              
              // gradient: RadialGradient( // 渐变色
              //   colors: [
              //     Color.fromRGBO(8, 123, 242, 1.0),
              //     Color.fromRGBO(13, 93, 22, 0.5),
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(8, 123, 242, 1.0),
                  Color.fromRGBO(13, 93, 22, 0.5),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
              ),
            ),
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