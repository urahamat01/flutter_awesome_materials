import 'package:flutter/material.dart';
import 'package:flutter_awesome_materials/GridView_InListView/GridViewCardWidget/HomeScreen.dart';

<<<<<<< HEAD
import 'page/widget/button_widget.dart';
import 'page/widget/navigation_drawer_widget.dart';
=======
import 'development/ui/widgets/material/list_dialogbox.dart';
import 'forms/retrieve_text.dart';
>>>>>>> 4fd919d... retrieve_text

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
          backgroundColor: Colors.blue,
        ),

        //body: Home_Screen(),
        //body: MainPageOpacity(),

        body: MyCustomForm(),

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
