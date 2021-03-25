import 'package:flutter/material.dart';

// The StatefulWidget's job is to take data and create a State class.
// In this case, the widget takes a title, and creates a _MyHomePageState.
class FadeInOut extends StatefulWidget {
  final String title;

  FadeInOut({Key key, this.title}) : super(key: key);

  @override
  _FadeInOutState createState() => _FadeInOutState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _FadeInOutState extends State<FadeInOut> {
  // Whether the green box should be visible
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          // If the widget is visible, animate to 0.0 (invisible).
          // If the widget is hidden, animate to 1.0 (fully visible).
          opacity: _visible ? 0.5 : 0.0,
          duration: Duration(milliseconds: 500),
          // The green box must be a child of the AnimatedOpacity widget.
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.purple,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Call setState. This tells Flutter to rebuild the
          // UI with the changes.
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'InOut',
        child: Icon(Icons.flip),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
