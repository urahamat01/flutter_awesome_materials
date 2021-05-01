import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  var _items = List<ListItem>();

  @override
  void initState() {
    super.initState();
    _items.add(ListItem("Title 1", "Message 1"));
    _items.add(ListItem("Title 2", "Message 2"));
    _items.add(ListItem("Title 3", "Message 3"));
    _items.add(ListItem("Title 4", "Message 4"));
    _items.add(ListItem("Title 5", "Message 5"));
    _items.add(ListItem("Title 6", "Message 6"));
    _items.add(ListItem("Title 7", "Message 7"));
  }

  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    var _itemCount = (_screenWidth / 200).ceil();
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Demo"),
      ),
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: (_screenWidth / _itemCount) / 200),
          itemBuilder: (BuildContext context, int index) {
            return listItem(_items[index].title, _items[index].message);
          },
          itemCount: _items.length),
    );
  }

  Widget listItem(String title, String message) {
    return Card(
      child: SizedBox(
        height: 200,
        width: 250,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(message),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem {
  String title;
  String message;

  ListItem(this.title, this.message);
}
