import 'package:flutter/material.dart';
import 'package:flutter_awesome_materials/GridView_InListView/GridViewCardWidget/HomeScreen.dart';

import 'page/widget/button_widget.dart';
import 'page/widget/navigation_drawer_widget.dart';

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
        drawer: NavigationDrawerWidget(),
        endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Flutter Awesome Material'),
        ),
        body: Home_Screen(),
        //body: MainPageOpacity(),

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

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        endDrawer: NavigationDrawerWidget(),
        body: Builder(
          builder: (context) => Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: ButtonWidget(
              icon: Icons.open_in_new,
              text: 'Open Drawer',
              onClicked: () {
                Scaffold.of(context).openDrawer();
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ),
      );
}
