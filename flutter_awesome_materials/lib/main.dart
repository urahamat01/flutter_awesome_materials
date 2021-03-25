import 'package:flutter/material.dart';

import 'animation/fadeTheBoxInAndOut.dart';

void main() {
  runApp(MyApp());
  //runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        buttonColor: Colors.purple,
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Awesome Material'),
        ),
        body: FadeInOut(),

        // body: DraggableCard(
        //   child: FlutterLogo(
        //     size: 128,
        //   ),
        // ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
