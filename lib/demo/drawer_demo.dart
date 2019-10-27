import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('dongpo', style: TextStyle(fontWeight: FontWeight.bold),),
                accountEmail: Text('dongpe@163.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('http://img3.redocn.com/tupian/20151015/weimeifengjingmanhuachatu_5091980.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('http://img3.redocn.com/tupian/20151015/weimeifengjingmanhuachatu_5091980.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow,
                      BlendMode.hardLight
                    )
                  )
                ),
              ),
              ListTile(
                title: Text('Messages', textAlign: TextAlign.right),
                trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),

              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.right),
                trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}