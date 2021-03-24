import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListDialogbox extends StatelessWidget {
  const ListDialogbox();

  @override
  Widget build(BuildContext context) {
    return const AlertDialogBox();
  }
}

class Rahamat {
  const Rahamat({this.name, this.description, this.age, this.imageUrl});

  final String name;
  final String description;
  final int age;
  final String imageUrl;
}

final String server =
    defaultTargetPlatform == TargetPlatform.android ? "10.0.2.2." : "localhost";

final List<Rahamat> rahamat = <Rahamat>[
  Rahamat(
    name: 'Md. Rahamat Ullah',
    description: 'Flutter Developer',
    age: 0,
    imageUrl:
        'data:image/jpeg;base64,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',
  ),
  Rahamat(
    name: 'Md. Rahamat Ullah',
    description: 'Flutter Developer',
    age: 0,
    imageUrl:
        'https://image.shutterstock.com/image-vector/profile-anonymous-face-icon-gray-600w-789318310.jpg',
  ),
  Rahamat(
    name: 'Md. Rahamat Ullah',
    description: 'Flutter Developer',
    age: 0,
    imageUrl:
        'https://image.shutterstock.com/image-vector/profile-anonymous-face-icon-gray-600w-789318310.jpg',
  ),
  Rahamat(
    name: 'Md. Rahamat Ullah',
    description: 'Flutter Developer',
    age: 0,
    imageUrl:
        'https://image.shutterstock.com/image-vector/profile-anonymous-face-icon-gray-600w-789318310.jpg',
  ),
  Rahamat(
    name: 'Md. Rahamat Ullah',
    description: 'Flutter Developer',
    age: 0,
    imageUrl:
        'https://image.shutterstock.com/image-vector/profile-anonymous-face-icon-gray-600w-789318310.jpg',
  ),
];

class AlertDialogBox extends StatelessWidget {
  const AlertDialogBox({Key key}) : super(key: key);

  Widget dialogBuilder(BuildContext context, Rahamat rahamat) {
    ThemeData localTheme = Theme.of(context);
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: [
        Image.network(
          rahamat.imageUrl,
          fit: BoxFit.fill,
          height: 250.0,
          width: 250.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                rahamat.name,
                style: localTheme.textTheme.headline5,
              ),
              Text(
                '${rahamat.age} Months old',
                style: localTheme.textTheme.subtitle1.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                rahamat.description,
                style: localTheme.textTheme.bodyText1,
              ),
              SizedBox(
                height: 16.0,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Call I\'Me'),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Message \'Me'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget listItemBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => showDialog(
          context: context,
          builder: (context) => dialogBuilder(context, rahamat[index])),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Image.network(
              rahamat[index].imageUrl,
              height: 40,
              width: 40,
            ),
            Text(
              rahamat[index].name,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: rahamat.length,
        itemExtent: 60.0,
        itemBuilder: listItemBuilder,
      ),
    );
  }
}
