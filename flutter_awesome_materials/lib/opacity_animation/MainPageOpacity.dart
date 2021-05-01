import 'package:flutter/material.dart';

import 'model/card_item.dart';

class MainPageOpacity extends StatefulWidget {
  // final String title;
  //
  // const MainPageOpacity({
  //    this.title,
  // });

  @override
  _MainPageOpacityState createState() => _MainPageOpacityState();
}

class _MainPageOpacityState extends State<MainPageOpacity> {
  List<CardItem> items = <CardItem>[
    CardItem(
      title: 'Painting',
      color: Colors.orange,
      urlImage:
          'https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=333&q=80',
    ),
    CardItem(
      title: 'Fun',
      color: Colors.blue,
      urlImage:
          'https://cdn.iconscout.com/icon/free/png-256/flutter-2752187-2285004.png',
    ),
    CardItem(
      title: 'Sport',
      color: Colors.deepPurple,
      urlImage:
          'https://images.unsplash.com/photo-1518611012118-696072aa579a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60',
    ),
    CardItem(
      title: 'Animals',
      color: Colors.green,
      urlImage:
          'https://images.unsplash.com/photo-1601758063541-d2f50b4aafb2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=994&q=80',
    ),
    CardItem(
      title: 'Reading',
      color: Colors.red,
      urlImage:
          'https://images.unsplash.com/photo-1491841550275-ad7854e35ca6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
    ),
    CardItem(
      title: 'Ideas',
      color: Colors.greenAccent,
      urlImage:
          'https://images.unsplash.com/photo-1542178432-52211bc52073?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double padding = 8;

    return Scaffold(
      appBar: AppBar(
        title: Text('OpacityAnimation'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(padding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: padding,
          mainAxisSpacing: padding,
          childAspectRatio: 3 / 4,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return buildCard(item: item);
        },
      ),
    );
  }

  Widget buildCard({@required CardItem item}) => GestureDetector(
        onTapDown: (_) => setTapped(item, isTapped: true),
        onTapUp: (_) => setTapped(item, isTapped: false),
        onTapCancel: () => setTapped(item, isTapped: false),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: item.color,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 500),
                  opacity: item.isTapped ? 1 : 0.5,
                  child: Image.network(item.urlImage, fit: BoxFit.cover),
                ),
              ),
              if (!item.isTapped)
                Center(
                  child: Text(
                    item.title,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
            ],
          ),
        ),
      );

  void setTapped(CardItem item, {@required bool isTapped}) {
    setState(() {
      this.items = items
          .map((otherItem) =>
              item == otherItem ? item.copy(isTapped: isTapped) : otherItem)
          .toList();
    });
  }
}
