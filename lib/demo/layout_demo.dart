import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
                ),
              ),
              SizedBox(height: 32.0),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.red,
                        Colors.white
                      ]
                    )
                  ),
                  child:
                      Icon(Icons.brightness_2, color: Colors.white, size: 32),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
              ),
              Positioned(
                right: 150.0,
                top: 100.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
              ),
              Positioned(
                right: 100.0,
                top: 200.0,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 32),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 33, 1.0),
    );
  }
}
