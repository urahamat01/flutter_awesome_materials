import 'package:flutter/material.dart';

import 'development/ui/widgets/material/list_dialogbox.dart';
import 'forms/retrieve_text.dart';
import 'gestures/AddMaterialTouchRipples.dart';
import 'gestures/GestureDetectors.dart';
import 'lists/CreateGridList.dart';
import 'lists/CreateHorizontalList.dart';

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
        body: CreateGridViews(),

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
