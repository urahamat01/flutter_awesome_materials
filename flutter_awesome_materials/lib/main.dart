import 'package:flutter/material.dart';

import 'development/ui/widgets/material/list_dialogbox.dart';
import 'forms/retrieve_text.dart';
import 'gestures/AddMaterialTouchRipples.dart';
import 'gestures/GestureDetectors.dart';
import 'lists/CreateGridList.dart';
import 'lists/CreateHorizontalList.dart';
import 'lists/DisplayingListsOfData.dart';

void main() {
  runApp(MyApp());
  //runApp(MaterialApp(home: MyApp()));
}

// items: List<ListItem>.generate(
// 1000,
// (i) => i % 6 == 0
// ? HeadingItem("Heading $i")
// : MessageItem("Sender $i", "Message body $i"),
// ),

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        buttonColor: Colors.purple,
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Scaffold(
        body: DisplayingListsOfData(),

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
