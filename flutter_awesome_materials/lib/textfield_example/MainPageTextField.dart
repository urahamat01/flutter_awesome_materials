import 'package:flutter/material.dart';

import 'widget/textfield_border_widget.dart';
import 'widget/textfield_focus_widget.dart';
import 'widget/textfield_general_widget.dart';

class MainPageTextField extends StatefulWidget {
  // final String title;
  //
  // const MainPageTextField({
  //   @required this.title,
  // });

  @override
  _MainPageTextFieldState createState() => _MainPageTextFieldState();
}

class _MainPageTextFieldState extends State<MainPageTextField> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('TextFieldWidget'),
          backgroundColor: Colors.blue,
        ),
        body: buildPages(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Text('TextField'),
              title: Text('General'),
            ),
            BottomNavigationBarItem(
              icon: Text('TextField'),
              title: Text('Borders'),
            ),
            BottomNavigationBarItem(
              icon: Text('TextField'),
              title: Text('Focus'),
            ),
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return TextfieldGeneralWidget();
      case 1:
        return TextfieldBorderWidget();
      case 2:
        return TextfieldFocusWidget();
      default:
        return Container();
    }
  }
}
