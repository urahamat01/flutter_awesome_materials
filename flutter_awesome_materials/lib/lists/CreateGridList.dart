import 'package:flutter/material.dart';

class CreateGridViews extends StatefulWidget {
  @override
  _CreateGridViewsState createState() => _CreateGridViewsState();
}

class _CreateGridViewsState extends State<CreateGridViews> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(
            100,
            (index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'MD. RAHAMAT ULLAH',
                    //'Item $index',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
