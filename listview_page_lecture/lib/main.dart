import 'package:flutter/material.dart';
import 'package:listview_page_lecture/animal_page.dart';

import 'model.dart';
import 'package:like_button/like_button.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyPage());
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger'
  ];

  static List<String> animalImagePath = [
    'image/bear.png',
    'image/camel.png',
    'image/deer.png',
    'image/fox.png',
    'image/kangaroo.png',
    'image/koala.png',
    'image/lion.png',
    'image/tiger.png',
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Africa',
    'Korea',
    'Africa'
  ];

  final List<Animal> animalDate = List.generate(
      animalImagePath.length,
      (index) => Animal(
            animalName[index],
            animalLocation[index],
            animalImagePath[index],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview'),
        ),
        body: ListView.builder(
            itemCount: animalName.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: (Text(
                    animalDate[index].name,
                  )),
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(animalDate[index].imgPath),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AnimalPage(
                              animal: animalDate[index],
                            )));
                    debugPrint(animalDate[index].name);
                  },
                ),
              );
            }));
  }
}
