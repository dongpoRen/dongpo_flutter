import 'package:flutter/material.dart';

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
            flatButtonDemo,
            rasideButtonDemo,
            outlineButtonDemo,
            fixWidthButtonDemo,
            expandedButtonDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}