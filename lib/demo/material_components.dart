import 'package:flutter/material.dart';

class MaterialCompoents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialCompoents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.black,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.black,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget rasideButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            elevation: 12.0,
            // color: Theme.of(context).accentColor,
            // textColor: Colors.white,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 40.0),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.black,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 40.0),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.black,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 120.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(
          width: 12.0,
        ),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                    )
                  ),
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton(
                        child: Text('Button'),
                        onPressed: () {},
                        splashColor: Colors.grey[100],
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        // color: Theme.of(context).accentColor,
                        textColor: Colors.black,
                        highlightedBorderColor: Colors.grey,
                        // textTheme: ButtonTextTheme.primary,
                      ),
                      OutlineButton(
                        child: Text('Button'),
                        onPressed: () {},
                        splashColor: Colors.grey[100],
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        // color: Theme.of(context).accentColor,
                        textColor: Colors.black,
                        highlightedBorderColor: Colors.grey,
                        // textTheme: ButtonTextTheme.primary,
                      ),
                    ],
                  ),
                ),
              ],
            );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                    )
                  ),
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton(
                        child: Text('Button'),
                        onPressed: () {},
                        splashColor: Colors.grey[100],
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        // color: Theme.of(context).accentColor,
                        textColor: Colors.black,
                        highlightedBorderColor: Colors.grey,
                        // textTheme: ButtonTextTheme.primary,
                      ),
                      OutlineButton(
                        child: Text('Button'),
                        onPressed: () {},
                        splashColor: Colors.grey[100],
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        // color: Theme.of(context).accentColor,
                        textColor: Colors.black,
                        highlightedBorderColor: Colors.grey,
                        // textTheme: ButtonTextTheme.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
    );

    final Widget _floatingActionButtonExtened = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
